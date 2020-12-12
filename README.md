# accubits_test
Please add your aws_access and secret_key of your aws account in providers.tf

EC2 instances will be used as application servers . 2 servers will be identical and share traffic equally.
>> Tried initially with Loadbalancer (commented out fields in main.tf), but as the component is not specified in component list, proceeded with Nginx LB in web-server with web1 acting as the LB and web2 as slave
