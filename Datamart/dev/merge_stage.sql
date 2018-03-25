--BTC Insert
update dev.public.stagebitcointransactions
set fee_currency_name = 'BTC';
update dev.public.stagebitcointransactions
set sent_currency_name = 'BTC';
INSERT INTO dev.public.facttransactions
(SELECT DISTINCT * FROM dev.public.stagebitcointransactions);

--XRP Insert
update dev.public.stagerippletransactions
set fee_currency_name = 'XRP';
INSERT INTO dev.public.facttransactions
(SELECT DISTINCT * FROM dev.public.stagerippletransactions);

--ETH Insert
INSERT INTO dev.public.facttransactions
(SELECT DISTINCT * FROM dev.public.stageethereumtransactions);

--Create Table for USD Values
INSERT INTO dev.public.factTransactionsUSD
(SELECT a.id
       , a.datetime as "gmt_datetime"
	   , a.unixtimestamp
       , a.transaction_hash
       , a.sender_address
       , a.transaction_type_name
       , a.transaction_subtype_name
       , a.transaction_function_name
       , a.fee
	   , (CAST(a.fee AS DECIMAL(24,6)) * CAST(c.usd_value AS DECIMAL(24,6))) as "fee_usd"
       , a.fee_currency_name
       , a.blockchain_network_name
       , a.sent_currency_name
       , a.sent_currency_amount
	   , (CAST(a.sent_currency_amount AS DECIMAL(24,6)) * CAST(b.usd_value AS DECIMAL(24,6))) as "sent_currency_amount_usd"
       , a.exchange_received_currency_name
       , a.exchange_received_amount
	   , (CAST(a.exchange_received_amount AS DECIMAL(24,6)) * CAST(d.usd_value AS DECIMAL(24,6))) as "exchange_received_amount_usd"
       , a.status
 FROM dev.public.facttransactions a
 LEFT OUTER JOIN public.currencytoudsconversion b ON a.sent_currency_name = b.currency_name
 LEFT OUTER JOIN public.currencytoudsconversion c ON a.fee_currency_name = c.currency_name
 LEFT OUTER JOIN public.currencytoudsconversion d ON a.exchange_received_currency_name = d.currency_name);

 --Alter datetime to not mess up PowerBI
 ALTER TABLE factTransactions
 RENAME COLUMN "datetime" to "gmt_datetime";
 ALTER TABLE factTransactionsUSD
 RENAME COLUMN "datetime" to "gmt_datetime";
