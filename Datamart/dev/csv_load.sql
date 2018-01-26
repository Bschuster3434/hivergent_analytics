COPY dev.public.facttransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_subtype_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/btc/btc_501798_501802.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
