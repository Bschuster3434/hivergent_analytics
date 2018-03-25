COPY dev.public.currencyToUDSConversion
( id,
currency_name,
usd_value)
FROM 's3://hivergent-analytics/dev/etl/dim/currency_to_usd_conversion.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.public.smartContractDetails
( id,
  smart_contract_hash,
  smart_contract_name,
  decimal
)
FROM 's3://hivergent-analytics/dev/etl/dim/smart_contract_detail.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
