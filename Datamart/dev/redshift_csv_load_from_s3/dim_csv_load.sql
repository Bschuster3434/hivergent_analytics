COPY dev.v2.dimcurrencyandsmartcontracts
  (
    id ,
    currency_type ,
    currency_name	,
    network_name	,
    usd_value	,
    smart_contract_hash	,
    smart_contract_name	,
    smart_contract_type	,
    organization_name
  )
FROM 's3://hivergent-analytics/dev/etl/dim/currency_and_token_smart_contract_details.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;

--dimCurrency

INSERT INTO dev.v2.dimCurrency
(
  SELECT DISTINCT currency_type
       , currency_name
       , network_name
       , usd_value
 FROM dev.v2.dimcurrencyandsmartcontracts
);
