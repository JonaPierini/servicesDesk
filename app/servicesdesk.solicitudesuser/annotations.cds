using servicesdeskService as service from '../../srv/service';
annotate service.SolicitudesUser with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Motivo}',
                Value : motivo,
            },
            {
                $Type : 'UI.DataField',
                Value : usuario,
                Label : '{i18n>CreadoPor}',
            },
            {
                $Type : 'UI.DataField',
                Value : tipo_solicitud_ID,
                Label : '{i18n>Tiposolicitudid}',
            },
            {
                $Type : 'UI.DataField',
                Value : urgencia_code,
                Label : '{i18n>Urgenciacode}',
            },
            {
                $Type : 'UI.DataField',
                Value : estado_code,
                Label : 'estado_code',
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comunicaciones',
            ID : 'Comunicaciones',
            Target : 'comunicaciones/@UI.LineItem#Comunicaciones1',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : '{i18n>Idsolicitud}',
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
            Label : '{i18n>FechaCreacion}',
        },
        {
            $Type : 'UI.DataField',
            Value : tipo_solicitud.ID,
            Label : '{i18n>Tiposolicitudid}',
        },
        {
            $Type : 'UI.DataField',
            Value : urgencia_code,
            Label : '{i18n>Urgenciacode1}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Estadocode}',
            Value : estado_code,
            Criticality : estado.criticality,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Motivo}',
            Value : motivo,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
            Label : '{i18n>CreadoPor}',
        },
    ],
);

annotate service.SolicitudesUser with {
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
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.SolicitudesUser with {
    estado @(
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.TipoSolicitud with {
    ID @Common.Text : nombre
};

annotate service.SolicitudesUser.comunicaciones with @(
    UI.LineItem #Comunicaciones : [
        {
            $Type : 'UI.DataField',
            Value : mensaje,
            Label : 'mensaje',
        },
        {
            $Type : 'UI.DataField',
            Value : fecha,
        },
    ],
    UI.LineItem #Comunicaciones1 : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : '{i18n>IdMensaje}',
        },
        {
            $Type : 'UI.DataField',
            Value : mensaje,
            Label : '{i18n>Mensaje}',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comunicaciones Detalles',
            ID : 'ComunicacionesDetalles',
            Target : '@UI.FieldGroup#ComunicacionesDetalles',
        },
    ],
    UI.FieldGroup #ComunicacionesDetalles : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : mensaje,
                Label : 'mensaje',
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : fecha,
            },
        ],
    },
);

annotate service.Estado with {
    code @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Estado',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : code,
                    ValueListProperty : 'code',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.SolicitudesUser with {
    urgencia @(Common.ValueListWithFixedValues : true
)};

