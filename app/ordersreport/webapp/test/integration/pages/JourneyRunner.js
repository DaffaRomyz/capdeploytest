sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ordersreport/test/integration/pages/OrdersList",
	"ordersreport/test/integration/pages/OrdersObjectPage"
], function (JourneyRunner, OrdersList, OrdersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ordersreport') + '/test/flpSandbox.html#ordersreport-tile',
        pages: {
			onTheOrdersList: OrdersList,
			onTheOrdersObjectPage: OrdersObjectPage
        },
        async: true
    });

    return runner;
});

