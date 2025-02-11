using servicesdeskService as service from '../../srv/service';
annotate service.TipoSolicitud with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'nombre',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
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
            Label : 'nombre',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
    ],
);

