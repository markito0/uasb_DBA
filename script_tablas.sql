create table mediatype(
    mediatypeid integer primary Key,
    name text
);

create table artist(
    artistid integer primary key,
    name text
);

create table album(
    albumid integer primary Key,
    title text,
    artistid integer references artist(artistid)
);

create table genre(
    genreid integer primary Key,
    name text
);

create table track(
    trackid integer primary key,
    name text,
    albumid integer references album(albumid),
    mediatypeid integer references mediatype(mediatypeid),
    genreid integer references genre(genreid),
    composer text,
    milliseconds integer,
    bytes integer,
    unitprice numeric(10,2)
);

create table playlist(
    playlistid integer primary Key,
    name text
);

create table playlisttrack(
    playlistid integer references playlist(playlistid),
    trackid integer references track(trackid) 
);

create table employee(
    employeeid integer primary key,
    lastname text,
    firstname text,
    title text,
    reportsto integer,
    birthdate timestamp,
    hiredate timestamp,
    address text,
    city text, 
    state text, 
    country text,
    postalcode text,
    phone text,
    fax text,
    email text
);

create table customer(
    customerid integer primary key,
    firstname text,
    lastname text,
    company text,
    address text, 
    city text,
    state text, 
    country text,
    postalcode text,
    phone text,
    fax text,
    email text,
    supportrepid integer references employee(employeeid)
);

create table invoice(
    invoiceid integer primary key,
    customerid integer references customer(customerid),
    invoicedate timestamp,
    billingaddress text,
    billingcity text,
    billingstate text,
    billingcountry text,
    billingpostalcode text,
    total numeric(10,2)
);

create table invoiceline(
    invocelineid integer primary key,
    invoiceid integer references invoice(invoiceid),
    trackid integer references track(trackid),
    unitprice numeric (10,2),
    quantity integer
);


