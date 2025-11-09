using CatalogService as service from '../../srv/catalog-service';

annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'title',
                Value: title,
            },
            {
                $Type: 'UI.DataField',
                Label: 'author_ID',
                Value: author_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'stock',
                Value: stock,
            },
            {
                $Type: 'UI.DataField',
                Label: 'price',
                Value: price,
            },
            {
                $Type: 'UI.DataField',
                Label: 'currency',
                Value: currency,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: title,
            Label: 'title',
        },
        {
            $Type: 'UI.DataField',
            Value: author_ID,
            Label: 'author_ID',
        },
        {
            $Type: 'UI.DataField',
            Value: stock,
            Label: 'stock',
        },
        {
            $Type: 'UI.DataField',
            Value: price,
            Label: 'price',
        },
        {
            $Type: 'UI.DataField',
            Value: currency,
            Label: 'currency',
        },
    ],
);

annotate service.Books with {
    author @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Authors',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: author_ID,
                    ValueListProperty: 'ID',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'dateOfBirth',
                },
            ],
        },
        Common.Text                    : author.name,
        Common.Text.@UI.TextArrangement: #TextOnly,
    )
};
