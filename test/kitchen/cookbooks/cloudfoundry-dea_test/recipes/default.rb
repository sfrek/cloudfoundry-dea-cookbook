#
# Cookbook Name:: cloudfoundry-dea_test
# Recipe:: default
#
# Copyright 2012, ZephirWorks
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
#

include_recipe "nats-server"

node['cloudfoundry_dea']['vcap']['install_path']  = "/opt/test/dea"
node['cloudfoundry_dea']['base_dir']              = "/var/test/dea"

node['cloudfoundry_dea']['runtimes'] = {
  'ruby19' => {
    'name'          => "ruby19",
    'version'       => "1.9.2",
    'cookbook'      => "cloudfoundry-dea_test::canary",
    'executable'    => "/opt/ruby/bin/ruby",
    'version_flag'  => "-v | cut -d' ' -f2",
    'default'       => true
  }
}
