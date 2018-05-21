#!/bin/bash

echo "hello World!!!"

rm test-crd
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o test-crd main.go
docker build -t a8uhnf/test-crd:1.0 .
rm test-crd
docker push a8uhnf/test-crd:1.0