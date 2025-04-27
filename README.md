1. Build an environment to run Terraform

Ans :

   - For this exercise an EC2 with Amazon Linux AMI has been used. Instance id is i-01fff03593dc4acc6 , created in us-east-1
   - EC2 has been configured with 'access key Id' and 'secret access key' to use Terraform cli , as shown below.
             
[ec2-user@ip-172-31-16-110 cohort1-capstone-project]$ aws configure

AWS Access Key ID [****************NRUP]:

AWS Secret Access Key [****************SkLj]:

Default region name [us-east-1]:

Default output format [json]:

[ec2-user@ip-172-31-16-110 cohort1-capstone-project]$


- AMI already has git installed . Here is the test result.

        [ec2-user@ip-172-31-16-110 cohort1-capstone-project]$ git -v
     git version 2.47.1
           
 
=========================================================


2.Install the Terraform software and ensure it works properly

Ans :
   - For terraform installation using hassicorp repo , following steps used

    sudo yum install -y yum-utils     
    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
    sudo yum -y install terraform
   
   Terraform installation was successful. Here is the version check output.
     
 [ec2-user@ip-172-31-16-110 cohort1-capstone-project]$ terraform -v
        Terraform v1.11.4 on linux_amd64
        [ec2-user@ip-172-31-16-110 cohort1-capstone-project]
     

============================================================

3.Test the environment by creating a simple virtual machine

Ans :
    - Test VM created successfully and the code is placed in the following directory.
    cohort1-capstone-project/terraform/aws/test-vm-for-initial-check
         
   - you may download code and run following commands to create vm

    terraform init
    trraform plan
    terraform apply
     
====================================


4. Build a website similar to the Space Invaders site you built in class by reusing modules.
5. 

Ans :
 - Static website bucket name passed as a variable( NOT as random name ) . Randam name is not something that a client likes in his environment .In case names need to be changed , modify it in this file .
   
     cohort1-capstone-project/terraform/aws/static-website/modules/static_site_bucket/variables.tf
   

 - to run the project go to the directory
    cohort1-capstone-project/terraform/aws/static-website
        Run following commands :
   
       terraform init
   
       terraform apply -target=module.s3_module
   
       terraform apply
   
  - S3 hosting URL will be shown in the terminal . Paste it in browser and check output
    

  
========================================

5. Put a copy of your code in Git, then destroy the infrastructure. Leave the environment intact.
   
   Ans :
      Code placed in git repo.
   
   
