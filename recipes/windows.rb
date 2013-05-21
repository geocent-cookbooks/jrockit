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

java_home = node['java']['java_home']

ruby_block  "set-env-java-home" do
  block do
    ENV["JAVA_HOME"] = java_home
  end
end

if platform?("windows")
  Chef::Log.warn("No download url set for java installer.") unless node['java']['windows']['url']

  if File.exists?(java_home)
    Chef::Log.info("#{java_home} already exists.....not installing JRockit")
  else 
    Chef::Log.info("#{java_home} does not exist")

    tmp_dir = "c:\\temp"
    silentxml = "#{tmp_dir}\\silent.xml"
    installer_dir = node['java']['installer_dir']
    jrockit_install_exe = "#{installer_dir}\\jrockit.exe" 

    directory tmp_dir do
      action :create
    end

    template silentxml do
      source "silent.xml.erb"
    end

    remote_file jrockit_install_exe do
        source node['java']['windows']['url']
        action :create_if_missing
    end

    windows_batch "JRockit installation" do
      code <<-EOH
        #{jrockit_install_exe} -mode=silent -silent_xml="#{silentxml}" -log="#{tmp_dir}\\silent.log"
      EOH
    end

    env "JAVA_HOME" do
        value java_home
    end

  end

end

