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
