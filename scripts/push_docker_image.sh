#!/bin/bash

set -e

# Default values
aws_account_id=""
region=""
repository_name=""

# Print help
usage() {
    echo "Usage: $0 --account <aws_account_id> --region <region> --repo <repository_name>"
    echo
    echo "Example:"
    echo "  $0 --account 123456789012 --region us-east-1 --repo test-app-repo"
    exit 1
}

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --account)
            aws_account_id="$2"
            shift 2
            ;;
        --region)
            region="$2"
            shift 2
            ;;
        --repo)
            repository_name="$2"
            shift 2
            ;;
        -h|--help)
            usage
            ;;
        *)
            echo "Unknown option: $1"
            usage
            ;;
    esac
done

# Validate required args
if [[ -z "$aws_account_id" || -z "$region" || -z "$repository_name" ]]; then
    echo "Error: Missing required arguments."
    usage
fi

pushd app || exit 1

    echo "Building the docker image..."
    docker build -t "${repository_name}" .
    echo "Image is built"

    echo "Pushing the docker image to the ECR..."
    docker tag "${repository_name}:latest" "${aws_account_id}.dkr.ecr.${region}.amazonaws.com/${repository_name}:latest"
    docker push "${aws_account_id}.dkr.ecr.${region}.amazonaws.com/${repository_name}:latest"
    echo "Docker image is pushed !!!"

popd
