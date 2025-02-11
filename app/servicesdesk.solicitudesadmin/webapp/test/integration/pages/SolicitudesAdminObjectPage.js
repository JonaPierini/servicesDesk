sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'servicesdesk.solicitudesadmin',
            componentId: 'SolicitudesAdminObjectPage',
            contextPath: '/SolicitudesAdmin'
        },
        CustomPageDefinitions
    );
});