---DATA UPDATES
--xrp
update dev.v2.stagerippletransactions
set fee_currency_name = 'XRP';

--btc
update dev.v2.stagebitcointransactions
set fee_currency_name = 'BTC';

--eth

--dimCurrency

INSERT INTO dev.v2.dimCurrency
(
  SELECT DISTINCT currency_type
       , currency_name
       , network_name
       , usd_value
 FROM dev.v2.dimcurrencyandsmartcontracts
);

--factCrossTransactionsTable
--btc
INSERT INTO dev.v2.factCrossTransactionsTable (
  SELECT
    a.id,
    a.datetime as "gmt_datetime",
    a.unixtimestamp,
    a.transaction_hash,
    a.sender_address,
    a.transaction_type_name,
    a.transaction_function_name,
    a.fee,
    (CAST(a.fee AS DECIMAL(24,6)) * CAST(b.usd_value AS DECIMAL(24,6))) as "fee_usd",
    a.fee_currency_name,
    a.blockchain_network_name,
    c.currency_type as "sent_currency_type",
    a.sent_currency_name ,
    a.sent_currency_amount ,
    (CAST(a.sent_currency_amount AS DECIMAL(24,6)) * CAST(c.usd_value AS DECIMAL(24,6))) as "sent_currency_amount_usd",
    a.status
    FROM dev.v2.stageBitcoinTransactions a
    LEFT OUTER JOIN (
      SELECT currency_name, usd_value, currency_type
      FROM dev.v2.dimCurrency
      WHERE currency_type = 'native_asset'
      and network_name = 'ripple'
      and currency_name = 'BTC' ) b ON a.fee_currency_name = b.currency_name
    LEFT OUTER JOIN (
      SELECT currency_name, usd_value, currency_type
      FROM dev.v2.dimCurrency
      WHERE network_name = 'ripple' ) c ON a.sent_currency_name = c.currency_name

);

--xrp
INSERT INTO dev.v2.factCrossTransactionsTable (
  SELECT
  a.id,
  a.datetime as "gmt_datetime",
  a.unixtimestamp,
  a.transaction_hash,
  a.sender_address,
  a.transaction_type_name,
  a.transaction_function_name,
  a.fee,
  (CAST(a.fee AS DECIMAL(24,6)) * CAST(b.usd_value AS DECIMAL(24,6))) as "fee_usd",
  a.fee_currency_name,
  a.blockchain_network_name,
  c.currency_type as "sent_currency_type",
  a.sent_currency_name ,
  a.sent_currency_amount ,
  (CAST(a.sent_currency_amount AS DECIMAL(24,6)) * CAST(c.usd_value AS DECIMAL(24,6))) as "sent_currency_amount_usd",
  a.status
  FROM dev.v2.stageRippleTransactions a
  LEFT OUTER JOIN (
    SELECT currency_name, usd_value, currency_type
    FROM dev.v2.dimCurrency
    WHERE currency_type = 'native_asset'
    and network_name = 'ripple'
    and currency_name = 'XRP' ) b ON a.fee_currency_name = b.currency_name
  LEFT OUTER JOIN (
    SELECT currency_name, usd_value, currency_type
    FROM dev.v2.dimCurrency
    WHERE network_name = 'ripple' ) c ON a.sent_currency_name = c.currency_name
);

--eth
INSERT INTO dev.v2.factCrossTransactionsTable (
  SELECT
  a.id,
  a.datetime as "gmt_datetime",
  a.unixtimestamp,
  a.transaction_hash,
  a.sender_address,
  a.transaction_type_name,
  a.transaction_function_name,
  a.fee,
  (CAST(a.fee AS DECIMAL(24,6)) * CAST(b.usd_value AS DECIMAL(24,6))) as "fee_usd",
  a.fee_currency_name,
  a.blockchain_network_name,
  c.currency_type as "sent_currency_type",
  a.sent_currency_name ,
  a.sent_currency_amount ,
  (CAST(a.sent_currency_amount AS DECIMAL(24,6)) * CAST(c.usd_value AS DECIMAL(24,6))) as "sent_currency_amount_usd",
  a.status
  FROM dev.v2.stageRippleTransactions a
  LEFT OUTER JOIN (
    SELECT currency_name, usd_value, currency_type
    FROM dev.v2.dimCurrency
    WHERE currency_type = 'native_asset'
    and network_name = 'ethereum'
    and currency_name = 'ETH' ) b ON a.fee_currency_name = b.currency_name
  LEFT OUTER JOIN (
    SELECT currency_name, usd_value, currency_type
    FROM dev.v2.dimCurrency
    WHERE network_name = 'ethereum' ) c ON a.sent_currency_name = c.currency_name
);

--factEthereumTransactionsTable
INSERT INTO dev.v2.factEthereumTransactionsTable (
  SELECT
  a.id,
  a.datetime as "gmt_datetime",
  a.unixtimestamp,
  a.transaction_hash
  a.sender_address,
  a.transaction_type_name,
  a.transaction_function_name,
  a.fee,
  (CAST(a.fee AS DECIMAL(24,6)) * CAST(b.usd_value AS DECIMAL(24,6))) as "fee_usd",
  a.fee_currency_name,
  a.blockchain_network_name,
  c.currency_type as "sent_currency_type",
  a.sent_currency_name ,
  a.sent_currency_amount ,
  (CAST(a.sent_currency_amount AS DECIMAL(24,6)) * CAST(c.usd_value AS DECIMAL(24,6))) as "sent_currency_amount_usd",
  a.status
  FROM dev.v2.stageEthereumTransactions a
  LEFT OUTER JOIN (
    SELECT currency_name, usd_value, currency_type
    FROM dev.v2.dimCurrency
    WHERE currency_type = 'native_asset'
    and network_name = 'ethereum'
    and currency_name = 'ETH' ) b ON a.fee_currency_name = b.currency_name
  LEFT OUTER JOIN (
    SELECT currency_name, usd_value, currency_type
    FROM dev.v2.dimCurrency
    WHERE network_name = 'ethereum' ) c ON a.sent_currency_name = c.currency_name
);
