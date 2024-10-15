#!/bin/bash

BASE_DIR="$PWD"
export API_SPEC="$PWD/generated/v1/api.gen.yaml"

make
cd ../go-flightdeck/
make
cd ../flightdeck-typescript/
yarn dev
yarn tsc
cd ../flightdeck/api
make gen
cd $BASE_DIR
