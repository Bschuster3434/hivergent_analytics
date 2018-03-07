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

#Brian Notes 1/5/2018

Worked my through the Bitcoin Ledger and found some good information. Now
working on Ripple and grabbing their transations. They will be a bit more
challenging, as there is quite a variety of transactions that happen on their
ledger, not a ton of which is actually XRP based. So we may need to add a field
to help facilitate their date (currency).

This is going to take some give and take. Ripple has a lot of transaction types,
and there's a lot of offers.

#Brian Notes 1/6/2018

Talked with the devs at IOTA and while there isn't a publically avaialble API
for IOTA, there is a pure python implementation that we could run to pull data.
This can act as a starting point for us here, if we chose to go down this
road.

#Brian Notes 1/23/2018
Oh bother. So, I'm starting to create the fact and Dimension tables and realized
a problem. If I have everything completely done with ids and what not, I will
need to have a more robust ETL process than what I currently have. I am
pulling data out of the blockchain apis and then dumping them. To have the
ids, I either need to have the ids built into the ETL from the get-go, or have
another step somewhere to sort all that shit out. Hmm... tricky.

I could just go ahead and build the 'flat' version of this dataset with
everything stored in one big table just to get something out... but I kind of
want to know what this in production might look like. I'll have to think
this through...

Alright, so we're going to waste a lot of time trying to create the dim model
I have in 'datamart_design'. There's just a lot of little work that's just
not worth the effort at this stage of the game. So instead, we're going to
take each python script and have it run the double duty of extracting data and
transforming it. That way, if we eventually want to split it into two parts,
we have the ability to do so. So the model is going to be simplified quite
a bit (one table perhaps).

#Brian Notes 1/25/2018
More trickiness... there are certain protocols that run on top of the Bitcoin
blockchain (specifically Tether) that would have to be decoded above and
beyond what is currently already here. Definitely a Phase II change, but
something worth considering.

#Brian Notes 2/28/2018
Been working on pulling the data for both Ethereum and Ripple.
Ripple data is not pulled by 'ledger' (their version of a block), but I pulled
the data back via timeframe. Here's the catch: I don't know if the Timestamp
api is inclusive or exclusive. The json files are so big it's hard to pull
them out and search (is there a tool to help with this?). I'll upload the data
as is, then check for duplicates after the fact. If there are duplicates, I can
re-run the table and make the hash a primary key to upsert duplicate records.
In the future, we'll avoid this issue by just searching by ledger as oppossed to
timestamp. Why the fuck does each blockchain feel the need to create their own
god damn definition of the same thing. "Oh, we don't have blockchain, it's a
different protocol". You have fucking ledgers that are basically the same
fucking concept as a block. Get off your high horse and stop confusing the
normies, asshole.

Okay, so csv files are stored without header info.

#Brian Notes 3/4/2018
So, janky bullshit found it's way into the development. As I suspected, I was
bringing in duplicate data due to the way that the ETL was pulling in data
from Ripple via dates. Seems that when you list a date, it's inclusive on
both ends, which means that I had overlapping times. So I had to run
a distinct select on the dataset to pull it into the table. I plan on fixing
this in prod by pulling by ledger as opposed to datetime.

So, pulled in the dataset and see some changes I want to make. First off,
Offer Cancels seem to modify previous records in the dataset, so it seems
that there needs to be a modification made to the numbers pulled to make
sure we don't count records that shouldn't be counted. That data is in the
json, but not sure where.

In addition, OfferCancel might actually be an administrative task, not an exchange
activity. Regardless, good stuff happening here.

#Brian Notes 3/7/2018
Okay, bit of a snag today. I realize now that decoding the data from Ethereum
is going to be a bit more challenging than I anticipated. Worse, it seems like
some of the libraries used to decode the data points I need are actually
not purely hex, but reading ABI data which is Ethereum's own way of handling
variables and input data. Not super complicated, but there's a lot of moving
parts. I really need to sit down and think through the architecture on this one.
I just need the damn thing done, not solve the architecture for the whole
project. I may hire a researcher to go find some data for me on some of these
bigger contracts. Regardless, I need some time.

---

No man is ever happy about shoveling shit, but only someone who's prepared to
shovel shit is willing to talk about it. So, let's talk.

In the project design, it appears that we're not going to be able to handle
smart contracts and non-smart contracts at the same time. Before, we just
dumped all the contracts into the same CSV files because they were coming from
the same set of contracts. However, because of the way smart contracts need to
be read, we need a python3 library to complete the job. We can't do everything
in python2, like I orignally hoped. However, we don't have to make too dramatic
of a change to accomodate this... at least for the POC. We can split the
transform activities into two separate scripts: smart contract and non-smart
contract. Non-smart contracts will act as the base, handling all the contracts
similar to the very very early POC. Nothing changes. We can then load those
CSVs into the datamart and start analyzing quite soon (possibly by Friday).

The smart contracts, on the other hand, will require reading multiple data
sources and feeds, some of which I'm not sure how to do yet. But what's clear
is that we need a new programming language to handle this, whether it's
python3 or node.js is yet to be decided. In this case, we need to do the
heavy work of parsing out which contracts belong to which currencies, reading
the input data to figure out which functions are being called, etc. Messy
bullshit, but something we can swallow for the prototype. Because of Taylor,
it's likely we'll have much, much better details going into the next phase, so
I'm not going to stress getting a perfect solution right now. Just enough to
get us there.

So, no point making life more miserable than it needs to be. I'll start with
re-architecting the folder structure and getting the non-smart contract
component completed. Once that's done, off to the next section.

Gally-fucking-ho!
