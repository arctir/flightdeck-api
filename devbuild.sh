#!/bin/bash

BASE_DIR="$PWD"
export API_SPEC="$PWD/generated/v1/api.gen.yaml"

make
cd ../go-arctir/
make
cd ../arctir-typescript/
yarn dev
yarn tsc
cd ../envapi/
make gen
cd $BASE_DIR
