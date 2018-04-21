--FactTransactions
--drop table v2.stagebitcointransactions;
--drop table v2.stageethereumtransactions;
--drop table v2.stagerippletransactions;
--drop table v2.dimCurrencyAndSmartContracts
--drop table v2.factCrossTransactionsTable
--drop table v2.factEthereumTransactionsTable

--Create Schema V2
CREATE SCHEMA if not exists public.v2  AUTHORIZATION admin;

--Create Core Tables

CREATE TABLE v2.stageBitcoinTransactions
(
  id VARCHAR(256),
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(38,19),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(38,19),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(38,19),
  status int
);
CREATE TABLE v2.stageRippleTransactions
(
  id VARCHAR(256),
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(38,19),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(38,19),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(38,19),
  status int
);
CREATE TABLE v2.stageEthereumTransactions
(
  id VARCHAR(256),
  datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  smart_contract_hash VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_subtype_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(38,19),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(38,19),
  exchange_received_currency_name VARCHAR(40),
  exchange_received_amount decimal(38,19),
  status int
);

CREATE TABLE v2.dimCurrencyAndSmartContracts
(
  id VARCHAR(256),
  currency_type VARCHAR(40),
  currency_name	VARCHAR(40),
  network_name	VARCHAR(40),
  usd_value	decimal(38,10),
  smart_contract_hash	VARCHAR(256),
  smart_contract_name	VARCHAR(256),
  smart_contract_type	VARCHAR(256),
  organization_name	VARCHAR(256)
);

CREATE TABLE v2.dimCurrency
(
  currency_type VARCHAR(40),
  currency_name	VARCHAR(40),
  network_name	VARCHAR(40),
  usd_value	decimal(38,10)
);

--Status for this table needs to be 1
CREATE TABLE v2.factCrossTransactionsTable
(
  id VARCHAR(256),
  gmt_datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(38,19),
  fee_usd decimal(38,6),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_type VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(38,19),
  sent_currency_amount_usd decimal(38,6),
  status int
);

CREATE TABLE v2.factEthereumTransactionsTable
(
  id VARCHAR(256),
  gmt_datetime timestamp,
  unixtimestamp int,
  transaction_hash VARCHAR(256),
  sender_address VARCHAR(256),
  smart_contract_name VARCHAR(256),
  smart_contract_type VARCHAR(256),
  smart_contract_hash VARCHAR(256),
  organization_name VARCHAR(256),
  transaction_type_name VARCHAR(40),
  transaction_function_name VARCHAR(256),
  fee decimal(38,19),
  fee_usd decimal(38,6),
  fee_currency_name VARCHAR(40),
  blockchain_network_name VARCHAR(40),
  sent_currency_type VARCHAR(40),
  sent_currency_name VARCHAR(40),
  sent_currency_amount decimal(38,19),
  sent_currency_amount_usd decimal(38,6),
  status int
);

-- Create Read User
create user hivergent_betauser_v2 password 'BetaUser1';

GRANT SELECT ON TABLE v2.factEthereumTransactionsTable TO hivergent_betauser;
GRANT SELECT ON TABLE v2.factCrossTransactionsTable TO hivergent_betauser;
GRANT SELECT ON TABLE v2.dimCurrencyAndSmartContracts TO hivergent_betauser;
