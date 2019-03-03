#!/bin/bash

set -e -u -x

export ROOT_FOLDER=$( pwd )

M2_HOME="${HOME}/.m2"
M2_CACHE="${ROOT_FOLDER}/maven"

[[ -d "${M2_CACHE}" && ! -d "${M2_HOME}" ]] && ln -s "${M2_CACHE}" "${M2_HOME}"

cd source-code
./mvnw clean install

