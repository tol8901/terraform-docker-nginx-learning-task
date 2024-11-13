# terraform-docker-nginx-learning-task

This repository represents the results of a learning task. Where used: Terraform (with AWS), Docker, and nginx.

## Table of Contents

- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)

## Description

This project demonstrates the use of Terraform for infrastructure as code, Docker for containerization, and nginx as a web server. It is intended to showcase skills and knowledge in these technologies.

## Installation

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

## Usage

This project is intended to show the skills and knowledge in Terraform, Docker, and nginx. It sets up an AWS infrastructure using Terraform, deploys a Docker container running nginx, and demonstrates the integration of these technologies.

## Configuration

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
	2) terraform init
	3) terraform plan

### Configure AWS CLI

1. Creating the S3 bucket manually (with the active versioning feature).
2. Perform the commands below
```sh
terraform init -reconfigure
terraform plan -lock=false
terraform import aws_s3_bucket.terraform_state terraform-up-and-running-state-qpworeitu23409588
terraform apply -lock=false
```