sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicesdesk/solicitudesadmin/test/integration/FirstJourney',
		'servicesdesk/solicitudesadmin/test/integration/pages/SolicitudesAdminList',
		'servicesdesk/solicitudesadmin/test/integration/pages/SolicitudesAdminObjectPage',
		'servicesdesk/solicitudesadmin/test/integration/pages/SolicitudesAdmin_comunicacionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesAdminList, SolicitudesAdminObjectPage, SolicitudesAdmin_comunicacionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicesdesk/solicitudesadmin') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolicitudesAdminList: SolicitudesAdminList,
					onTheSolicitudesAdminObjectPage: SolicitudesAdminObjectPage,
					onTheSolicitudesAdmin_comunicacionesObjectPage: SolicitudesAdmin_comunicacionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);