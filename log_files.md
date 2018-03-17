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

#Brian Notes 3/12/18

Well, fuck me sideways, something else we learned today. Smart contracts
created do not have a 'to' field and have to be handled separately. I don't
see anything in the transaction log that seems to indicate a contract, other
than have a 'contractAddress' in the receipt. I assume this is the indicator,
but I'll have to look at a few more examples to be certain. For now, I'm just
going to assume these need to be handled at some point and continue with
just smart contracts.

#Brian Notes 3/15/18

And after a small break(down), we're back. So, this smart contract stuff is just
not going easily into the night. So, first things first, I need to get rid of
all the contracts and shit available that decidely are uncategorizable, at least
under the current schema. I need to only look at things that have abi data and
can actually be viewed under this context. Out of the 300,000+ contracts, I don't
think there are many, but every one counts. Why? Because I don't understand how to
categorize abis well enough to programatically handle them. So to figure this out,
I need to get ALL the data that I know is available and get the data into a SS
to start analyzing them. And 300,000 tx ain't fucking going in a SS.

Really, the biggest thing I want to handle is payments... that's the biggest thing.
If I can figure out how to get smart contract payments into the datamart, this thing
will be incredible on it's own. It pisses me off to no end that DEX data is going
to have to wait some time, but that's the life of an adventurer in this space.

As far as actually seeing the ABI, I'm going to need to do some really janky
BS to get everything in. My script to read it will be relatively simple, but
I need a lot of space to actually get everything onto a SS. Once I get there, I
can start thinking through future steps.

Another thing: adding my pandas dataframe of ABI data slowed my script down to a
crawl. What used to be a 3 minute process seems to be going 10X slower, at least.
So there are some optimizations to be made when we go to prod (for example, not
using pandas for this type of scripting, just native python). Not the biggest
bugger-boo to be concerned about, but something worth keeping in mind going forward.

Completely unrelated: I'm going to go back to re-read the Martian, because I
could use Mark Watney's inspiration to handle this. Just one problem at a time,
Brian....

#Brian Notes 3/16/18

So, onto the next part: just splitting the abi down into something intelligible.
In order to figure out how ethereum wants to view this data, I just want to see
how it's giving me data. I understand that there will be a fair amount of
truncation and classification, but I really don't want to implement a full
decoder at this point... after all, I'm just interested in getting payments. So
all I want to do is just take the data I'm being give and just get it down into
a csv. Shouldn't be too hard to do...
