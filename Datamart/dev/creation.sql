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
  transaction_function_name VARCHAR(256),
  fee decimal(30,15),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(30,15),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(30,15),
  status int
);
CREATE TABLE currencyDetails
(
  id VARCHAR(256),
  currency_name VARCHAR(40),
  network_name VARCHAR(40),
  usd_value decimal(30,15),
  smart_contract_hash VARCHAR(256),
  smart_contract_name VARCHAR(256),
  decimal int
);
CREATE TABLE stageBitcoinTransactions
(
  id VARCHAR(256),
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(30,15),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(30,15),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(30,15),
  status int
);
CREATE TABLE stageRippleTransactions
(
  id VARCHAR(256),
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(30,15),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(30,15),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(30,15),
  status int
);
CREATE TABLE stageEthereumTransactions
(
  id VARCHAR(256),
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(30,15),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(30,15),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(30,15),
  status int
);
