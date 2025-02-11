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
                Label : '{i18n>Personasoporte}',
            },
            {
                $Type : 'UI.DataField',
                Value : tipo_solicitud_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : usuario,
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
            Value : usuario,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
            Label : '{i18n>FechaCreacion}',
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
            Label : '{i18n>Tiposolicitud}',
        },
        {
            $Type : 'UI.DataField',
            Value : persona_soporte_ID,
            Label : '{i18n>Personasoporte}',
        },
    ],
    UI.SelectionFields : [
        tipo_solicitud_ID,
        estado_code,
        usuario,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : usuario,
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
        Common.Text : {
            $value : tipo_solicitud.nombre,
            ![@UI.TextArrangement] : #TextOnly
        },
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
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : persona_soporte.nombre,
            ![@UI.TextArrangement] : #TextOnly
        },
)};

annotate service.PersonasSoporte with {
    ID @Common.Text : nombre
};

annotate service.SolicitudesAdmin with {
    usuario @Common.Label : '{i18n>Usuario}'
};

