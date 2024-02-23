#!/bin/sh

echo $PATH

image_exists=$(cd /app && go run /app/ecr.go -region=$1 -repository-name=$2 -tag=$3 -access-key-id=$4 -secret-access-key=$5 )
echo "image-exists=$image_exists" >> $GITHUB_OUTPUT
