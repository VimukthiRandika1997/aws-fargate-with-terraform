# aws-fargate-with-terraform
The pipeline builds a Docker image, pushes it to Amazon ECR, and deploys it to an ECS service using Fargate

## How to run

### 1. Setup the AWS Configurations

- Make sure that your AWS credentials are configured in your environment
- You can use AWS CLI tool to configure them: [more details](/docs/configure_aws_cli.md)

### 2. Deploy the infrastructure

- In this step, the cloud resources are created in the AWS

    ```ini
    bash scripts/create_resources.sh
    ```

### 3. Create and push the Docker image

- In this step, the Docker image is built and pushed into the AWS ECR

    ```ini
    bash scritps/push_docker_image.sh
    ```

## Output

- After the deployment,  our application will be running on AWS ECS
- We can access it via the load-balancer URL provided in the outputs of the terraform configuration