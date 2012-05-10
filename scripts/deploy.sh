#!/bin/bash
# Depoyment process for salesforce


deploytype="deploy"
case $2 in
	'sites')
		deploytype="sites"	
esac

case $1 in
	'dev')
		echo "Target Org: [Dev]"
		echo "[deploying...]"
		ant ${deploytype} -propertyfile "./salesforce.properties.dev"
		;;
	'qa')
		echo "Target Org: [QA]"
		echo "[deploying...]"
		ant ${deploytype} -propertyfile "./salesforce.properties.qa"
		;;

	'ci')
		echo "Target Org: [CI]"
		echo "[deploying...]"
		ant ${deploytype} -propertyfile "./salesforce.properties.ci"
		;;
	'ex')
		echo "Target Org: [EX]"
		echo "[deploying...]"
		ant ${deploytype} -propertyfile "./salesforce.properties.ex"
		;;
	'prod')
		echo "Target Org: [PROD]"
		echo "[deplying...]"
		ant ${deploytype} -propertyfile "./salesforce.properties.prod"
		;;
	*)
		echo "Usage deploy.sh [dev|qa|ci|ex|prod]"
		echo "[exiting...]"
		;;	
esac