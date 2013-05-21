# Description

Installs and configures Oracle JRockit JDK.

# Requirements

Official JRockit install binary (Windows).

# Platform

* Windows

# Attributes

* `default['jrockit']['windows']['url']` - URL hosting the installer binary
* `default['jrockit']['java_home']` - JAVA_HOME directory
* `default['jrockit']['jre_home']` - JRE install directory
* `default['jrockit']['windows']['package_name']` - "Oracle JRockit JDK R28.2.7 for Java SE 6 with JRMC 4.1"

# Recipes

* `windows` - Installs JRockit on Windows
