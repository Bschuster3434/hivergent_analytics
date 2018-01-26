--FactTransactions
CREATE TABLE factTransactions
(
  id int,
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  fee decimal(20,10),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(20,10),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(20,10),
  exchange_rate VARCHAR(40),
  status_name int
);
