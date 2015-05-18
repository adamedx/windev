# windev

The [windev cookbook](https://github.com/adamedx/windev) configures Windows-specific debugging tools.

## Prerequisites

The Windows operating system is a prerequisite -- this cookbook will only function on Windows.

## Usage

Add a recipe from this cookbook to a node's runlist in order to configure debugging tools and related utilities on a node according to the recipe.

### Default recipe

The default recipe installs the core user mode and kernel mode debuggers for Windows. This includes the following tools:

* NT System Debugger (ntsd)
* Console Debugger (cdb)
* WinDbg
* Kernel Debugger (kd)
* Global Flags (gflags)
* Debugger help files (debugger.chm)
* Remote.exe

Additional tools are also installed and provide related diagnostic functionality.

## Limitations

* The installation directory of the debugging tools cannot be configured -- it is always on the system drive in the directory `\\winsdk`.

# TODO -- what's next?

Below is a list of possible improvements to this cookbook:

* Add unit and integration tests
* Make the installation directory and drive configurable
* Implement a resource for configuring the debugging tools to avoid the use of cookbook attributes for cookbook configurability
* Add support for installing sysinternals tools, possibly in a separate recipe
* Subsume this cookbook into another, such as the [Windows cookbook](https://github.com/chef-cookbooks/windows)

License and Authors
-------------------
Copyright:: Copyright (c) 2015 Adam Edwards (adamedx)

License:: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

