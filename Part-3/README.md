Q.1) Write a python script which would fetch instance size of the launched instances and write it to AWS SSM Parameter Store
Ans - Have created a python script named instances.py that fetches the no.of instances launched and copies the value to Parameter store in AWS.

Q.2) How would you update the infra changes if you have to update a terraform module?
Ans - After making the infra change(for e.g. changing instance type, ami etc) in main.tf file, by performing terraform refresh would update the current configuration to theterraform state file. But this is not always required because when you perform terraform apply, under the hoods terraform refresh is also applied and its executed in the environment.

Q.4) On what occasion would you replace Terraform with Ansible (or any other tool)?
Ans - I would prefer Ansible when we want to apply software level configurations in each instances/servers. For e.g installing a software package in multiple no.of instances/servers. It is simple to do with playbooks in Ansible. And terraform does not support bare metal provisioning by default whereas ansible supports both bare metal and cloud.

Q.6) In brief words, what can you tell us about DNSSEC?
Ans - DNSSEC(Domain Name System Security Extensions) protects internet users and applications from forged domain name system (DNS) data by using public key cryptography to digitally sign authoritative zone data when it enters the DNS and then validate it at its destination.

Q.7) What is a Data Warehouse?
Ans - A data warehouse is a system used for reporting and data analysis and is considered a core component of business intelligence. Large store of data accumulated from a wide range of sources within a company. Data warehouse allows business users to quickly access critical data from different sources all in one place. Oracle offers a wide range of choice for data warehouse solutions for both on-premises and in cloud.

Q.8) On AWS, where you would replace ELB with ALB?
Ans - If i wanted to route to multiple ports on a single instance, i would prefer using ALB. Application Load Balancer enables content-based routing and allows requests to be routed to different applications behind a single load balance. While the Classic Load Balancer doesn't do that, a single ELB can host single application.

Q.9) CI/CD best practices for you?
Ans - Commit early, Commit often, Be in sync with your team, Add proper reviewers, Streamline your tests, Clean your environments, Maintain meaningful commits so that one can refer, Setup continous deployment for lower environment, Keep track of your builds before merging.
