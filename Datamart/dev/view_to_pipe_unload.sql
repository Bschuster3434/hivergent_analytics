unload ('select * from public.facttransactionsusd')
to 's3://hivergent-analytics/dev/table_export/'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
maxfilesize 100 mb;
