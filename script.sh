#!/bin/bash
ls -lrst
oc version

read -p "Do you wish to setup pipelines in Test Environments for Release '$releaseName'? : " yn
case $yn in
	[Yy]* ) 
		echo "Creating pipelines in Test environments for Release '$releaseName' ....." 
		break;;
	[Nn]* ) break;;
	* ) echo "Please answer y or n.";;
esac