This scripts would create a bucket which will trigger event on s3:ObjectCreated:*. You can pass the bucket name as input variable.

Also will create an SNS topic and with a email subscription. You can pass your email id as input variable.

Execute: terraform apply

The above will create resourse and will output the bucket arn.

Login to your email and subscribe to the topic

Now upload a file to test:
aws s3 cp test.txt s3://<bucket_name from above>
aws s3 cp test.txt s3://anil-source-bucket-quantum

This will upload file to bucket and you should recieve a email notification