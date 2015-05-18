################################################################
##
## PURPOSE:
## build all projects
##
## HISTORY:
## 1:18 PM 4/30/2015
##
## PREREQUSITES:
## 1. Java must be installed
## 2. Maven must be installed
##
################################################################

pushd bom/build 		&& mvn clean install && popd
pushd java-commons		&& mvn clean install && popd
pushd snowball			&& mvn clean install && popd
pushd jaxrs-minimalist	&& mvn clean install && popd
pushd solr-minnimalist	&& mvn clean install && popd
pushd jaxrs-mongo		&& mvn clean install && popd
pushd gngrams-scripts	&& mvn clean install && popd