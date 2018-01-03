# Brian Notes 1/1/2018
Going through this now and coming up with a plan to add a bunch of data.
I have added the following folders for structure:
- Datamart (Where the logic for the Datamart Stucture goes)
- ETL (Where the ETL Logic goes)
- Nodes (Where the logic for creating the blockchain data nodes exist)
This should be enough to get us started.
I am going to start with Bitcoin and use a publically available API to start
building our ETL. After I get that settled, I will go and create a Datamart.

Future Question: We will be getting a fuck ton of different datetime stamps
and will need to convert them to some standard format across the board. What
timestamp will be best for this?
- EC: The date table should cover this. We can bring in the raw date, and transform it into columns (day, day of week, day of year, hour, month, quarter, week, weekday, year, etc.). That will give us all kinds of cool slices.

Working through 100 blocks for Ethereum. We can do up to 300 requests a minute,
which means that we can clear a day in a reasonable time frame.
Just need a good way to be able to add new transactions and keep track of
everything as it eventually fails. Working on the BTC ETL now.

Well... shit. Seems that BTC can allow for multiple senders in a particular
transaction. Also, i'm starting to get sloppy. Just wasted an hour running the
Ethereum ETL for it to be wasted. Boo.
