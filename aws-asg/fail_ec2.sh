#update the requried fields based on your environment

INSTANCE_ID=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=app-server" --query "Reservations[].Instances[].InstanceId" --output text | head -n1)
aws ec2 terminate-instances --instance-ids $INSTANCE_ID
