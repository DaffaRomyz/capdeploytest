namespace capdeploytest;

using {
    managed,
    cuid
} from '@sap/cds/common';

// Books entity
entity Books : cuid, managed {
    title    : String(100);
    author   : Association to Authors;
    stock    : Integer;
    price    : Decimal(10, 2);
    currency : String(3) default 'USD';
}

// Authors entity
entity Authors : cuid, managed {
    name        : String(100);
    dateOfBirth : Date;
    books       : Association to many Books
                      on books.author = $self;
}

// Orders entity
entity Orders : cuid, managed {
    book         : Association to Books;
    quantity     : Integer;
    orderDate    : DateTime;
    customerName : String(100);
    totalAmount  : Decimal(10, 2);
}
