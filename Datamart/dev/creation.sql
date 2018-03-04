--FactTransactions
CREATE TABLE factTransactions
(
  id VARCHAR(256),
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  fee decimal(30,15),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(30,15),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(30,15),
  exchange_rate VARCHAR(40),
  status int
);
