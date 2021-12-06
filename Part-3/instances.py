import boto3
import os

client = boto3.client('ec2')
Myec2=client.describe_instances()
counter = 0
for pythonins in Myec2['Reservations']:
  for printout in pythonins['Instances']:
     print("Instance id is",printout['InstanceId'])
     counter = counter + 1

command = """aws ssm put-parameter --name "instance_size" --value {} --type String --overwrite""".format(counter)
os.system(command)
print("Copied to Parameter Store")
