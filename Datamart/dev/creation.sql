--FactTransactions
CREATE TABLE factTransactions
(
  id int,
  date timestamp,
  unixdate int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  fee decimal(20,10),
  blockchain_network_name int,
  sent_currency_name int,
  sent_currency_amount decimal(20,10),
  exchange_received_currency_name int,
  exchange_received_amount int,
  exchange_rate VARCHAR(40)
);
