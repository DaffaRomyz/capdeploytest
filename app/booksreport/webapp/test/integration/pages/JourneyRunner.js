sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"booksreport/test/integration/pages/BooksList",
	"booksreport/test/integration/pages/BooksObjectPage"
], function (JourneyRunner, BooksList, BooksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('booksreport') + '/test/flpSandbox.html#booksreport-tile',
        pages: {
			onTheBooksList: BooksList,
			onTheBooksObjectPage: BooksObjectPage
        },
        async: true
    });

    return runner;
});

