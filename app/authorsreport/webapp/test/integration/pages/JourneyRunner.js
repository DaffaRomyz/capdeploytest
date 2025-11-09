sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"authorsreport/test/integration/pages/AuthorsList",
	"authorsreport/test/integration/pages/AuthorsObjectPage"
], function (JourneyRunner, AuthorsList, AuthorsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('authorsreport') + '/test/flpSandbox.html#authorsreport-tile',
        pages: {
			onTheAuthorsList: AuthorsList,
			onTheAuthorsObjectPage: AuthorsObjectPage
        },
        async: true
    });

    return runner;
});

