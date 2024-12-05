# terraform-docker-nginx-learning-task

This repository represents the results of a learning task. Where used: Terraform (with AWS), Docker, and nginx.

## Table of Contents

- [Description](#description)
- [Installation (Local)](#installation)
- [Usage and running](#usage)
- [Configuration (general)](#configuration)
- [Contributing](#contributing)

## Description

This project demonstrates the use of Terraform for infrastructure as code, Docker for containerization, and nginx as a web server. It is intended to showcase skills and knowledge in these technologies.

## Installation (Local)

Follow these steps to set up the project locally:

### Preparation

1. **Install Git**: Follow the instructions on the [Git website](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) to install Git.
2. **Install AWS CLI**: Follow the instructions on the [AWS CLI website](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) to install the AWS CLI.
3. **Install Terraform**: Follow the instructions on the [Terraform website](https://learn.hashicorp.com/tutorials/terraform/install-cli) to install Terraform.

### Cloning the Repository

1. **Clone the repository**:

    ```sh
    git clone https://github.com/yourusername/terraform-docker-nginx-learning-task.git
    cd terraform-docker-nginx-learning-task
    ```

2. **Configure AWS CLI**:

    ```sh
    aws configure
    ```

## Usage and running

This project is intended to show the skills and knowledge in Terraform, Docker, and nginx. It sets up an AWS infrastructure using Terraform, deploys a Docker container running nginx, and demonstrates the integration of these technologies.

### Creating the S3 bucket manually

1. Copy to the temporary text file the AWS S3 bucket name from the ```variables.tf``` file. It is needed to be created manually befor running the Terraform code. The S3 bucket in this project is used to store the Terraform state file, enabling remote state management and collaboration.
    For example: **terraform-up-and-running-state-qpworeitu234095889s**
    Note: if the bucket name was changed in the repository, it is needed to be changed in a whole project, in every file where it is mentioned (main.tf, variables.tf, README.md). For quick search we can use the Search issue of the code editor or IDE.
2. Log in to the AWS account and create the S3 bucket manually in the AWS Console.
    2.1. Type in the search field the "S3" and select the S3 service from the search results.
    2.2. Hit the button "Create bucket".
    2.3. Paste the bucket name into the "Bucket name" field.
    2.4. In the Bucket Versioning menu select Enable.
    2.5. To complete the bucket creation, hit the "Create bucket" button on the bottom of the webpage.

### Running the process of creation of the infrastructure via Azure DevOps (ADO)

1. Start the ADO agent. Here is used the local agent which should be run via starting the WSL-Ubuntu from the local machine (Windows 11) from the local user Windows account.
2. Paste the AWS credentials (Access Key Id, Secret Access Key) to the ADO Pipelines, Release pipelines and AWS Service Connections.
3. To prepare the infrastructure run the ADO pipeline **terraform-task**. To generate the Terraform plan, and check the plan manually in the output before applying the changes. After completion of the pipeline, we can go further.
4. To apply the Terraform plan run the **tf-apply-pipeline** ADO Release pipeline. This stage can take some time from AWS to create all needed resources. After comleting that, we can go to the next steps. For double-check we can go to the AWS Console to manually check the resources created.

### Pushing the Docker-image to the AWS ECR

1. Open the AWS ECR in the AWS Console.
2. Select the repository **docker-nginx-ecr-repo**.
3. Click on the "View push commands". Then the pop-up window will appear with necessary commands.
4. Open the ADO Pipeline **docker-nginx** and update the AWS accoutn number (for example "590183888594") in the .yaml file.



















## Configuration (general)

### Configure Git Locally

1. **Set up your Git username and email**:

    ```sh
    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"
    ```

2. **Generate SSH keys**:

    ```sh
    ssh-keygen -t rsa -b 4096 -C "your.email@example.com"
    ```

3. **Add your SSH key to the ssh-agent**:

    ```sh
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
    ```

4. **Add the SSH key to your GitHub account**: Follow the instructions on the [GitHub website](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh).

### Configure AWS CLI

1. **Set up your AWS credentials**:

    ```sh
    aws configure
    ```

    You will be prompted to enter your AWS Access Key ID, Secret Access Key, region, and output format.

## Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some feature'`)
5. Push to the branch (`git push origin feature-branch`)
6. Open a pull request

## Task

1. Add code for VPC (2 subnets: public, private) (IGW, NAT, routetables)
2. Push it to the repository on the GitHub.
3. Create Azure pipeline yaml file in the repository.
4. In the file should be:
	1) login to aws from ADO (put creds into the ADO pipeline variable)
	2) **terraform init**
	3) **terraform plan**
5. Implement the stage **terraform apply** in the Azure DevOps Pipeline.
6. Implement the storage of the Terraform state file in the S3 bucket.
7. Create the AWS ECR via Terraform code.
8. Push the Docker-image to the private AWS ECR repository.
9. Pull the Docker-image from the ECR and make it available from the IP-address of the EC2 instance (the Nginx-server webpage via HTTP).

### Configure AWS CLI

1. Creating the S3 bucket manually (with the active versioning feature).
2. Perform the commands below
```sh
terraform init -reconfigure
terraform plan -lock=false
terraform import aws_s3_bucket.terraform_state terraform-up-and-running-state-qpworeitu234095889
terraform apply -lock=false
```