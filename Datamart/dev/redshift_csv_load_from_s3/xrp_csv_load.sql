--create table facttransactions as select distinct * from public.facttransactions_xrp_data_with_duplicates;
--Used this line above to load the below data into a new table (not named factTransactions)
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T000000_20171231T000500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T000500_20171231T001000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T001000_20171231T001500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T001500_20171231T002000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T002000_20171231T002500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T002500_20171231T003000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T003000_20171231T003500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T003500_20171231T004000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T004000_20171231T004500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T004500_20171231T005000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T005000_20171231T005500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T005500_20171231T010000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T010000_20171231T010500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T010500_20171231T011000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T011000_20171231T011500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T011500_20171231T012000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T012000_20171231T012500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T012500_20171231T013000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T013000_20171231T013500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T013500_20171231T014000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T014000_20171231T014500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T014500_20171231T015000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T015000_20171231T015500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T015500_20171231T020000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T020000_20171231T020500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T020500_20171231T021000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T021000_20171231T021500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T021500_20171231T022000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T022000_20171231T022500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T022500_20171231T023000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T023000_20171231T023500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T023500_20171231T024000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T024000_20171231T024500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T024500_20171231T025000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T025000_20171231T025500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T025500_20171231T030000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T030000_20171231T030500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T030500_20171231T031000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T031000_20171231T031500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T031500_20171231T032000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T032000_20171231T032500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T032500_20171231T033000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T033000_20171231T033500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T033500_20171231T034000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T034000_20171231T034500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T034500_20171231T035000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T035000_20171231T035500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T035500_20171231T040000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T040000_20171231T040500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T040500_20171231T041000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T041000_20171231T041500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T041500_20171231T042000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T042000_20171231T042500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T042500_20171231T043000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T043000_20171231T043500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T043500_20171231T044000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T044000_20171231T044500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T044500_20171231T045000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T045000_20171231T045500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T045500_20171231T050000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T050000_20171231T050500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T050500_20171231T051000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T051000_20171231T051500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T051500_20171231T052000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T052000_20171231T052500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T052500_20171231T053000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T053000_20171231T053500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T053500_20171231T054000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T054000_20171231T054500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T054500_20171231T055000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T055000_20171231T055500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T055500_20171231T060000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T060000_20171231T060500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T060500_20171231T061000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T061000_20171231T061500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T061500_20171231T062000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T062000_20171231T062500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T062500_20171231T063000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T063000_20171231T063500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T063500_20171231T064000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T064000_20171231T064500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T064500_20171231T065000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T065000_20171231T065500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T065500_20171231T070000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T070000_20171231T070500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T070500_20171231T071000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T071000_20171231T071500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T071500_20171231T072000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T072000_20171231T072500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T072500_20171231T073000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T073000_20171231T073500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T073500_20171231T074000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T074000_20171231T074500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T074500_20171231T075000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T075000_20171231T075500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T075500_20171231T080000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T080000_20171231T080500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T080500_20171231T081000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T081000_20171231T081500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T081500_20171231T082000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T082000_20171231T082500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T082500_20171231T083000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T083000_20171231T083500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T083500_20171231T084000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T084000_20171231T084500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T084500_20171231T085000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T085000_20171231T085500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T085500_20171231T090000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T090000_20171231T090500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T090500_20171231T091000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T091000_20171231T091500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T091500_20171231T092000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T092000_20171231T092500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T092500_20171231T093000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T093000_20171231T093500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T093500_20171231T094000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T094000_20171231T094500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T094500_20171231T095000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T095000_20171231T095500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T095500_20171231T100000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T100000_20171231T100500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T100500_20171231T101000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T101000_20171231T101500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T101500_20171231T102000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T102000_20171231T102500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T102500_20171231T103000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T103000_20171231T103500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T103500_20171231T104000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T104000_20171231T104500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T104500_20171231T105000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T105000_20171231T105500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T105500_20171231T110000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T110000_20171231T110500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T110500_20171231T111000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T111000_20171231T111500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T111500_20171231T112000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T112000_20171231T112500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T112500_20171231T113000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T113000_20171231T113500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T113500_20171231T114000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T114000_20171231T114500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T114500_20171231T115000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T115000_20171231T115500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T115500_20171231T120000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T120000_20171231T120500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T120500_20171231T121000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T121000_20171231T121500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T121500_20171231T122000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T122000_20171231T122500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T122500_20171231T123000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T123000_20171231T123500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T123500_20171231T124000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T124000_20171231T124500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T124500_20171231T125000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T125000_20171231T125500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T125500_20171231T130000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T130000_20171231T130500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T130500_20171231T131000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T131000_20171231T131500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T131500_20171231T132000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T132000_20171231T132500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T132500_20171231T133000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T133000_20171231T133500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T133500_20171231T134000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T134000_20171231T134500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T134500_20171231T135000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T135000_20171231T135500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T135500_20171231T140000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T140000_20171231T140500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T140500_20171231T141000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T141000_20171231T141500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T141500_20171231T142000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T142000_20171231T142500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T142500_20171231T143000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T143000_20171231T143500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T143500_20171231T144000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T144000_20171231T144500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T144500_20171231T145000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T145000_20171231T145500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T145500_20171231T150000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T150000_20171231T150500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T150500_20171231T151000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T151000_20171231T151500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T151500_20171231T152000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T152000_20171231T152500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T152500_20171231T153000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T153000_20171231T153500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T153500_20171231T154000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T154000_20171231T154500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T154500_20171231T155000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T155000_20171231T155500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T155500_20171231T160000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T160000_20171231T160500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T160500_20171231T161000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T161000_20171231T161500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T161500_20171231T162000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T162000_20171231T162500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T162500_20171231T163000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T163000_20171231T163500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T163500_20171231T164000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T164000_20171231T164500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T164500_20171231T165000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T165000_20171231T165500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T165500_20171231T170000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T170000_20171231T170500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T170500_20171231T171000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T171000_20171231T171500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T171500_20171231T172000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T172000_20171231T172500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T172500_20171231T173000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T173000_20171231T173500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T173500_20171231T174000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T174000_20171231T174500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T174500_20171231T175000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T175000_20171231T175500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T175500_20171231T180000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T180000_20171231T180500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T180500_20171231T181000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T181000_20171231T181500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T181500_20171231T182000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T182000_20171231T182500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T182500_20171231T183000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T183000_20171231T183500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T183500_20171231T184000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T184000_20171231T184500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T184500_20171231T185000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T185000_20171231T185500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T185500_20171231T190000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T190000_20171231T190500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T190500_20171231T191000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T191000_20171231T191500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T191500_20171231T192000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T192000_20171231T192500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T192500_20171231T193000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T193000_20171231T193500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T193500_20171231T194000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T194000_20171231T194500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T194500_20171231T195000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T195000_20171231T195500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T195500_20171231T200000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T200000_20171231T200500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T200500_20171231T201000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T201000_20171231T201500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T201500_20171231T202000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T202000_20171231T202500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T202500_20171231T203000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T203000_20171231T203500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T203500_20171231T204000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T204000_20171231T204500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T204500_20171231T205000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T205000_20171231T205500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T205500_20171231T210000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T210000_20171231T210500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T210500_20171231T211000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T211000_20171231T211500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T211500_20171231T212000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T212000_20171231T212500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T212500_20171231T213000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T213000_20171231T213500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T213500_20171231T214000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T214000_20171231T214500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T214500_20171231T215000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T215000_20171231T215500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T215500_20171231T220000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T220000_20171231T220500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T220500_20171231T221000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T221000_20171231T221500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T221500_20171231T222000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T222000_20171231T222500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T222500_20171231T223000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T223000_20171231T223500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T223500_20171231T224000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T224000_20171231T224500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T224500_20171231T225000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T225000_20171231T225500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T225500_20171231T230000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T230000_20171231T230500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T230500_20171231T231000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T231000_20171231T231500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T231500_20171231T232000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T232000_20171231T232500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T232500_20171231T233000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T233000_20171231T233500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T233500_20171231T234000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T234000_20171231T234500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T234500_20171231T235000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T235000_20171231T235500.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
COPY dev.v2.stageRippleTransactions
( id,
  datetime,
  unixtimestamp,
  transaction_hash,
  sender_address,
  transaction_type_name,
  transaction_function_name,
  fee,
  blockchain_network_name,
  sent_currency_name,
  sent_currency_amount,
  exchange_received_currency_name,
  exchange_received_amount,
  status)
FROM 's3://hivergent-analytics/dev/etl/xrp/xrp_20171231T235500_20180101T000000.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::485025720738:role/redshift_s3_lambda_admin'
csv;
