#!/bin/bash
yum update -y
export AWSDIR='/root/.aws' USERID='nameOfAwsConsoleUser' NEWPASS='newPasswordForConsoleUser' AWSKEYID='aws_access_key_id_Value' AWSSECRETKEY='aws_secret_access_key_Value'
mkdir -m00755 $AWSDIR
(umask 0077 && echo $'[default]\naws_access_key_id = '$AWSKEYID $'\naws_secret_access_key = '$AWSSECRETKEY > $AWSDIR/credentials)
(umask 0077 && echo $'[default]\nregion = us-east-2\noutput = json' > $AWSDIR/config)
aws iam update-login-profile --user-name $USERID --password $NEWPASS