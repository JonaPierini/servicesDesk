using servicesdeskService as service from '../../srv/service';
annotate service.SolicitudesAdmin with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Estadocode}',
                Value : estado_code,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Motivo}',
                Value : motivo,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Urgenciacode}',
                Value : urgencia_code,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
                Label : '{i18n>CreadoPor}',
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                Label : '{i18n>FechaCreacion}',
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : persona_soporte_ID,
                Label : 'persona_soporte_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : tipo_solicitud_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
            Label : '{i18n>CreadoPor}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Estadocode}',
            Value : estado_code,
            Criticality : estado.criticality,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Urgenciacode}',
            Value : urgencia_code,
        },
        {
            $Type : 'UI.DataField',
            Value : motivo,
            Label : '{i18n>Motivo}',
        },
        {
            $Type : 'UI.DataField',
            Value : tipo_solicitud_ID,
            Label : '{i18n>Tiposolicitudid}',
        },
        {
            $Type : 'UI.DataField',
            Value : persona_soporte_ID,
            Label : '{i18n>Personasoporteid}',
        },
    ],
    UI.SelectionFields : [
        tipo_solicitud_ID,
        estado_code,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.SolicitudesAdmin with {
    tipo_solicitud @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'TipoSolicitud',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : tipo_solicitud_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
            ],
        },
        Common.Label : '{i18n>Tiposolicitudid}',
        Common.ValueListWithFixedValues : true,
        Common.Text : tipo_solicitud.nombre,
    )
};

annotate service.SolicitudesAdmin with {
    estado @(
        Common.Label : '{i18n>Estadocode}',
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.SolicitudesAdmin with {
    urgencia @Common.ValueListWithFixedValues : true
};

annotate service.SolicitudesAdmin with {
    persona_soporte @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PersonasSoporte',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : persona_soporte_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};

annotate service.PersonasSoporte with {
    ID @Common.Text : nombre
};

