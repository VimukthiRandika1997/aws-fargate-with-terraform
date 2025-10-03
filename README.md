# aws-fargate-with-terraform

![aws_fargate](/assets/aws_fargate.png)

The pipeline builds a Docker image, pushes it to Amazon ECR, and deploys it to an ECS service using Fargate

## How to run manually

### 1. Setup the AWS Configurations

- Make sure that your AWS credentials are configured in your environment
- You can use AWS CLI tool to configure them: [more details](/docs/configure_aws_cli.md)

- Create the initial S3 bucket to store the terraform state: [more details](/docs/create_terraform_state_bucket.md)

### 2. Deploy the infrastructure

- In this step, the cloud resources are created in the AWS

    ```ini
    bash scripts/create_resources.sh create
    ```

### 3. Create and push the Docker image

- In this step, the Docker image is built and pushed into the AWS ECR

    ```ini
    bash scripts/push_docker_image.sh --account <your_account_id> --region us-east-1 --repo test-app-repo
    ```

### 4. Destroy the infrastructure

- First, delete the docker image from the **ECR**
- Then run this command to destroy cloud resources you have created before

    ```ini
    bash scripts/create_resources.sh destroy
    ```

## Output

- After the deployment,  our application will be running on AWS ECS
- We can access it via the load-balancer URL provided in the outputs of the terraform configuration
- To access the FastAPI application, check the `public_ip_address:8080` of the **Task** in **ECS**