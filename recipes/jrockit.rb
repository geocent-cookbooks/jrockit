#
# Author:: Tyler Sanders
# Cookbook Name:: jrockit
# Recipe:: default
#
# Copyright 2013, Tyler Sanders
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

if platform?("windows")

  Chef::Log.warn("No download url set for java installer.") unless node['jrockit']['windows']['url']

  java_home = node['jrockit']['java_home']

  template "#{Chef::Config[:file_cache_path]}/silent.xml" do
    source "silent.xml.erb"
  end
  
  windows_package node['jrockit']['windows']['package_name'] do
        source node['jrockit']['windows']['url']
        action :install
        installer_type :custom
        options "-mode=silent -silent_xml=\"#{Chef::Config[:file_cache_path]}/silent.xml\" -log=\"#{Chef::Config[:file_cache_path]}\\silent.log\""
  end

  env "JAVA_HOME" do
    value java_home
  end

end

