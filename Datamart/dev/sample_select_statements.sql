SELECT *
 FROM dev.public.facttransactions LIMIT 100;

 SELECT *
 FROM dev.public.facttransactions
 WHERE blockchain_network_name = 'bitcoin'
 LIMIT 100;

 SELECT blockchain_network_name,
 transaction_type_name,
 count(*)
 FROM dev.public.facttransactions
 Group By blockchain_network_name,
 transaction_type_name;
