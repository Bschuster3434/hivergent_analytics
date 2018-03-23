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
