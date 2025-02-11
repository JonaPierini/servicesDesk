sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicesdesk/tiposolicitud/test/integration/FirstJourney',
		'servicesdesk/tiposolicitud/test/integration/pages/TipoSolicitudList',
		'servicesdesk/tiposolicitud/test/integration/pages/TipoSolicitudObjectPage'
    ],
    function(JourneyRunner, opaJourney, TipoSolicitudList, TipoSolicitudObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicesdesk/tiposolicitud') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTipoSolicitudList: TipoSolicitudList,
					onTheTipoSolicitudObjectPage: TipoSolicitudObjectPage
                }
            },
            opaJourney.run
        );
    }
);