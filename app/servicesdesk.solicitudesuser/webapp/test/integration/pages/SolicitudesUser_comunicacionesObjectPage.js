sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'servicesdesk.solicitudesuser',
            componentId: 'SolicitudesUser_comunicacionesObjectPage',
            contextPath: '/SolicitudesUser/comunicaciones'
        },
        CustomPageDefinitions
    );
});