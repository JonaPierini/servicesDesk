sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicesdesk/solicitudesuser/test/integration/FirstJourney',
		'servicesdesk/solicitudesuser/test/integration/pages/SolicitudesUserList',
		'servicesdesk/solicitudesuser/test/integration/pages/SolicitudesUserObjectPage',
		'servicesdesk/solicitudesuser/test/integration/pages/SolicitudesUser_comunicacionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesUserList, SolicitudesUserObjectPage, SolicitudesUser_comunicacionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicesdesk/solicitudesuser') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolicitudesUserList: SolicitudesUserList,
					onTheSolicitudesUserObjectPage: SolicitudesUserObjectPage,
					onTheSolicitudesUser_comunicacionesObjectPage: SolicitudesUser_comunicacionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);