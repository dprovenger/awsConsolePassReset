# awsConsolePassReset
   This code can be added as user data, during the creating of a new AWS instance, and it will run as a configuration script during launch. 

This code can be modfied to run any AWS cli commands during the launch of a new AWS instance.

# awsConsolePassReset

Bash code that will allow you to change the AWS Management Console user's password.

## Description

Nothing magical about this code, it serves as an additional way to change the password for an AWS Management Console user.
This project will serve as the foundation of additional automation. This will be integrated with Terraform and will allow the execution of automation code during the creation of an AWS instance.  The instance will be created, it will execute code, and it will be terminated. This code can be added during the creation of a new instance, as USER DATA, under the ADVANCED DETAILS section. 

## Getting Started

### Dependencies

* To be used during the creation of an AWS instance via the AWS Management Console.
* Will require an AMI with 'aws cli' already running (Example: AMAZON LINUX 2 AMI).
* Just add the code to the USER DATA, under the ADVANCED DETAILS section.
* Will need to replace the following variables with correct values: (USERID, NEWPASS, AWSKEYID, and AWSSECRETKEY).


### Installing

* During STEP3 of creating a new instance (Configure Instance Details), add the code under USER DATA (ADVANCED DETAILS section).
* Add correct values: (USERID, NEWPASS, AWSKEYID, and AWSSECRETKEY).

### Executing program

* Add all code lines to execute password reset for a certain user
* Add additional "aws cli" commands to execute additional tasks

## Help

* Lookup additional "aws cli" commands and options that can be used for AWS password resets.

## Authors

Jorge Arrieta 
jorge.r.arrieta.jr@gmail.com

## Version History

* 0.1
    * Initial Release
