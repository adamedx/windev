# Cookbook Name:: windev
# Recipe:: default
#
# Copyright 2015, Adam Edwards
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

return if ! node[:platform] == 'windows'

download_directory = "#{Chef::Config[:file_cache_path]}/windev/winsdksetup".gsub(/\\/, '/')
download_path = ::File.join(download_directory, 'sdksetup.exe')

directory download_directory do
  recursive true
end

remote_file download_path do
  source 'https://www.microsoft.com/click/services/Redirect2.ashx?CR_EAC=300135395'
end

sdk_install_directory = ::File.join(ENV['systemdrive'], 'WinSDK')

sdk_debugger_path = ::File.join(sdk_install_directory, 'debuggers', 'x64', 'ntsd.exe')

execute 'install Windows SDK debugger tools' do
  command "#{download_path} /installpath #{sdk_install_directory} /q /norestart /features OptionId.WindowsDesktopDebuggers"
  not_if { ::File.exist?(sdk_debugger_path) }
end
