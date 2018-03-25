create user hivergent_betauser password 'BetaUser1';
grant select on all tables in schema public to hivergent_beta;
GRANT SELECT ON TABLE public.currencytoudsconversion TO hivergent_betauser;
GRANT SELECT ON TABLE public.facttransactions TO hivergent_betauser;
GRANT SELECT ON TABLE public.facttransactionsusd TO hivergent_betauser;
GRANT SELECT ON TABLE public.smartcontractdetails TO hivergent_betauser;
