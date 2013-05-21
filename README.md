# jrockit cookbook

Installs and configures Oracle JRockit JDK.

# Requirements

Official JRockit install binary (Windows).

# Attributes

* `default['java']['windows']['url']` - URL hosting the installer binary
* `default['java']['java_home']` - JAVA_HOME directory
* `default['java']['installer_dir']` - temporary directory for installer

# Recipes

* `windows` - Installs JRockit on Windows
