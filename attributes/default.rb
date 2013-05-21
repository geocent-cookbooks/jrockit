#
# Cookbook Name:: jrockit
# Attributes:: default 
#
# Copyright 2013 Geocent
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


case platform
when "windows"
  default['java']['windows']['url'] = ""
  default['java']['java_home'] = "C:\\Java\\jrockit"
  default['java']['installer_dir'] = "C:\\temp"
end

# if you change this to true, you can download directly from Oracle
default['java']['oracle']['accept_oracle_download_terms'] = false
