# Creating Terraform State Bucket in AWS Cloud

- First step is to configure aws cli: `aws` in your local-machine: [refer this](/docs/configure_aws_cli.md)
- using the aws cli, we're going to create s3 bucket for storing terraform state
- This bucket has to be created manually as terraform can not create with other cloud resources

## 1. Create S3 bucket

- Replace the name you want to set for the s3 bucket:

    ```ini
    aws s3 mb s3://<your-unique-bucket-name>
    ```
- If you want to create the bucket in a region different from your default configured region, use this command:

    ```ini
    aws s3api create-bucket --bucket <your-unique-bucket-name> --region us-east-1 --create-bucket-configuration LocationConstraint=us-east-1
    ```

## 2. Verification

- You can verify the created bucket, using this command:

    ```ini
    aws s3 ls
    ```