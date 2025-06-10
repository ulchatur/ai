#This will only verify if the new ec2 is up and running in ASG or not as ASG can auto heal itself. update the required fields based on your environment

aws ec2 describe-instance-status --instance-ids <new_id> --query "InstanceStatuses[0].InstanceStatus.Status"
