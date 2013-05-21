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
  default['jrockit']['windows']['url'] = nil
  default['jrockit']['java_home'] = "C:\\Java\\jrockit"
  default['jrockit']['jre_home'] = "C:\\Java\\jrockit\\jre"
  default['jrockit']['windows']['package_name'] = "Oracle JRockit JDK R28.2.7 for Java SE 6 with JRMC 4.1"
end
