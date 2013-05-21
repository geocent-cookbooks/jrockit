name             "jrockit"
maintainer       "YOUR_NAME"
maintainer_email "YOUR_EMAIL"
license          "Apache 2.0"
description      "Installs/Configures Java Oracle JRockit"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "windows", "Installs JRockit on windows with a JAVA_HOME specified"

depends "windows"

%w{ windows }.each do |os|
  supports os
end
