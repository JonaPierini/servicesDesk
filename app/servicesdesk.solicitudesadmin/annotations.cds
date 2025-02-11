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
                Value : usuario,
                Label : '{i18n>UsuarioCreador}',
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
            Label : '{i18n>UsuarioCreador}',
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

