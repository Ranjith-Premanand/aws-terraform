1. New instance created with mentioned specification in main.tf file

2. Storing the terraform.tfstate file in AWS S3 bucket with the help of backend.tf where i have specified the S3 bucket information.

3. If a instance is already deployed, we could import that instance with the help of below command. I have also created a resource syntax in main.tf file for the imported instance.
   terraform import aws_instance.httpbin-2 i-0c480c6f88f1a76a9

4. We could rename an instance or any resource with help of below syntax
   terraform state mv aws_instance.httpbin aws_instance.httpbin_svc
