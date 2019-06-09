#!/bin/bash

export env=$1
export version=$2
JAR_NAME=jar: /home/travis/build/ViharikaVelagala/Mycode/target/Mycode-${version}.jar
CLASS_NAME="com.code.Mycode1"

if [ ${env} = "dev" ] || [ ${env} = "staging" ] || [ ${env} = "prod" ]; then 
    java -cp ${JAR_NAME} ${CLASS_NAME} 
else 
    echo "Invalid Environment"
	exit 1
fi
