#!/bin/bash
#---------------------------------------------
# This script contains a sample function which
# can be used to log.
#---------------------------------------------

logit(){
	local LOG_LEVEL=$1
	shift
	MSG=$@
	TIMESTAMP=$(date +"%Y-%m-%d %T")
	if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE
	then
		echo  "${TIMESTAMP} ${HOST} ${PROGRAM_NAME} [${PID}]: ${LOG_LEVEL} ${MSG}"
	fi
}

# logit INFO "Processingn data."
# fetch-data $HOST || logit ERROR "Could not fetch data form $HOST"
