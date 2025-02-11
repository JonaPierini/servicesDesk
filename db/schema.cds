namespace servicesdesk;

using {
   
    managed ,
    sap.common.CodeList 
} from '@sap/cds/common';

entity Solicitudes: managed
{
    key ID : UUID;
    estado : Association to Estado default 'Nuevo';
    motivo : String(100);
    tipo_solicitud : Association to one TipoSolicitud;
    urgencia : Association to Urgencia default 'Bajo';
    persona_soporte : Association to one PersonasSoporte;
    usuario : type of managed:createdBy;
//    comunicaciones : Association to one Comunicaciones;
    comunicaciones  : Composition of many {
           key ID    : UUID;
           autor    : type of managed:createdBy;
           fecha : type of managed:createdAt;
           mensaje   : String;
    };
}


entity TipoSolicitud
{
    key ID : UUID;
    nombre : String(100);
    solicitudes : Association to one Solicitudes on solicitudes.tipo_solicitud = $self;
}


entity Urgencia : CodeList {
    key code: String enum {
        high = 'Alto';
        medium = 'Medio'; 
        low = 'Bajo'; 
    };
}

entity Estado : CodeList {
    key code: String enum {
    nuevo = 'Nuevo';
    pendiente = 'Pendiente';
    proceso = 'En Proceso';
    resuelta = 'Resuelta'; 
    cerrado = 'Cerrado';
};
criticality : Integer;
}

entity PersonasSoporte
{
    key ID : UUID;
    apellido_uno : String(100);
    apellido_dos : String(100);
    nombre : String(100);
    solicitudes : Association to many Solicitudes on solicitudes.persona_soporte = $self;
}
