-- Standard Select
SELECT *
 FROM dev.public.facttransactions LIMIT 100;

 --See Individual Blokchain Network Names
 SELECT *
 FROM dev.public.facttransactions
 WHERE blockchain_network_name = 'bitcoin'
 LIMIT 100;

 --Transaction Type by Network
 SELECT blockchain_network_name,
 transaction_type_name,
 count(*)
 FROM dev.public.facttransactions
 Group By blockchain_network_name,
 transaction_type_name;

 --- Currencies by Network
SELECT blockchain_network_name,
sent_currency_name,
count(*)
FROM dev.public.facttransactions
where sent_currency_name != ''
Group By blockchain_network_name,
sent_currency_name
;

--Currency Amounts
SELECT a.id,
a.datetime ,
a.sent_currency_name,
a.sent_currency_amount,
b.usd_value,
(CAST(a.sent_currency_amount AS DECIMAL(20,2)) * CAST(b.usd_value AS DECIMAL(20,2)))
FROM public.facttransactions a
LEFT OUTER JOIN public.currencytoudsconversion b ON a.sent_currency_name = b.currency_name
LIMIT 1000;

--Play Around with USD Values
SELECT * from public.view_facttransactionusd limit 100;
