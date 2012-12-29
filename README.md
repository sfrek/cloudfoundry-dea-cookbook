Description
===========

Install the Cloud Foundry [DEA](https://github.com/cloudfoundry/dea)
(Droplet Execution Agent), a mandatory component of a
[Cloud Foundry](http://www.cloudfoundry.org) installation.

Requirements
============

Platform
--------

* Ubuntu

Tested on:

* Ubuntu 10.04
* Ubuntu 12.04

Cookbooks
---------

* cloudfoundry

Attributes
==========

* `cloudfoundry_dea[:pid_file]` - Where to write the DEA's pid file. Default is `File.join(node['cloudfoundry']['pid_dir'], "dea.pid")`.
* `cloudfoundry_dea[:log_file]` - Where to write the DEA's logs. Default is `File.join(node['cloudfoundry']['log_dir'], "dea.log")`.
* `cloudfoundry_dea[:runtimes]` - Array of hashes storing the `name`, `cookbook`, `executable`, `version`, and `version_flag` for each runtime supported by this DEA.  TODO (trotter): Make the runtime's cookbook contain most of this info Default is `[`.
* `cloudfoundry_dea[:base_dir]` - TODO (trotter): Find out what is stored here. Default is `/var/vcap/data/dea"`.
* `cloudfoundry_dea[:filter_port]` - TODO (trotter): Find out what this does. Default is `12345`.
* `cloudfoundry_dea[:heartbeat]` - Interval (in seconds) between heartbeats sent to the Health Manager. Default is `10`.
* `cloudfoundry_dea[:log_level]` - Log level for the DEA. Default is `info"`.
* `cloudfoundry_dea[:max_memory]` - The maximum amount of memory this DEA is allowed to allocate across all its applications. Default is `4096`.
* `cloudfoundry_dea[:secure_env]` - TODO (trotter): Find out what this does. Default is `false`.
* `cloudfoundry_dea[:multi_tenant]` - Allow the DEA to manage more than one application. Default is `true`.
* `cloudfoundry_dea[:force_http_sharing]` - Force the DEA to download applications over http, even when it's possible to access them via a shared directory. Default is `true`.

Usage
=====

The default recipe will install the CloudFoundry DEA on the target node along
with the necessary configuration files and init scripts to run it. Simply add
it to your run list:

    run_list "recipe[cloudfoundry-dea]"

License and Author
==================

* Author:: Andrea Campi (<andrea.campi@zephirworks.com>)
* Author:: Trotter Cashion (<cashion@gmail.com>)

* Copyright:: 2012 ZephirWorks
* Copyright:: 2012 Trotter Cashion

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
