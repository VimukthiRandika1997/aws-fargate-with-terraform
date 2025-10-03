# How to configure AWS CLI

Configuring AWS CLI involves providing our AWS credentials and default settings for interaction with AWS services. Here're the steps to do that:

## 1. Obtain AWS access keys:

- Sign in to the AWS Management Console.
- Navigate to the IAM (Identity and Access Management) dashboard.
- Select "Users" from the left navigation pane.
- Choose the IAM user you intend to use with the AWS CLI.
- Go to the "Security credentials" tab.
- Click on "Create access key."
- Select "Command Line Interface (CLI)" and acknowledge the understanding of long-term credentials.
- Record the displayed AWS Access Key ID and Secret Access Key. It is crucial to save these securely as the Secret Access Key cannot be retrieved again after this point.

## 2. Configure the AWS CLI

- In the terminal window, execute the following command

    ```ini
    aws configure
    ```

- Provide the following prompted details: 
    - AWS Access Key ID: Paste the Access Key ID you obtained in the previous step.
    - AWS Secret Access Key: Paste the Secret Access Key you obtained.
    - Default region name: Specify the AWS Region where you primarily intend to operate (e.g., us-east-1, eu-west-2).
    - Default output format: Choose your preferred output format (e.g., json, text, table).

## 3. Verification

- Execute the following command to return the information about IAM user whose credentials you have configured
- This confirms the successful authentication

```ini
aws sts get-caller-identity
```

## References

- [Configuring AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html)