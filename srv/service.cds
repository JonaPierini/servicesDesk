using { servicesdesk as my } from '../db/schema';

@path : '/service/ServicesDeskSvcs'
service servicesdeskService
{
    annotate SolicitudesAdmin with @restrict :
    [
        { grant : [ '*' ], to : [ 'Admin' ] }
    ];

    annotate SolicitudesUser with @restrict :
    [
        { grant : [ 'CREATE', 'READ', 'UPDATE', 'DELETE' ], to : [ 'User' ], where : 'createdBy = $user' }
    ];

    annotate TipoSolicitud with @restrict :
    [
        { grant : [ '*' ], to : [ 'Admin' ] },
        { grant : [ 'READ' ], to : [ 'User' ] },
    ];

    @odata.draft.enabled
    entity SolicitudesUser as
        projection on my.Solicitudes;

    @cds.redirection.target : false
    @odata.draft.enabled
    entity SolicitudesAdmin as
        projection on my.Solicitudes;

    @odata.draft.enabled
    entity TipoSolicitud as
        projection on my.TipoSolicitud;

    @odata.draft.enabled
    entity PersonasSoporte as
        projection on my.PersonasSoporte;
}

annotate servicesdeskService with @requires :
[
    'User',
    'Admin'
];
