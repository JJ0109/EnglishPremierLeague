using datamodel.db.SlahService from './slahservice';

/*annotate SlahService.Geraete with @(
UI : {
       SelectionFields: [],
    LineItem: [
      { Value: ID, Label: 'Geraeteid' },            
      { Value: verbindung.ID, Label: 'Geraetetypid' },  
      { Value: status },
      { Value: verbindung.name, Label: 'Geraetetypname' }
    ] 
}
);*/


annotate SlahService.Geraetetyp with @(
UI : {
       SelectionFields: [],
    LineItem: [
      { Value: ID, Label: 'Geraetetypid' },            
      { Value: verbindung.ID, Label: 'Geraeteid' },  
      { Value: name },
      { Value: verbindung.status, Label: 'status' }
    ],

//Start Eingefügt
HeaderInfo  : {
    $Type : 'UI.HeaderInfoType',
    TypeName : 'Gerätetyp',
    TypeNamePlural : 'Gerätetypen',
    Title: {Value: name},
    //Description: {Value: ID}
},

HeaderFacets  : [
    {$Type: 'UI.ReferenceFacet',
    Target: '@UI.FieldGroup#HeaderGeneralInformation'}
],

FieldGroup#HeaderGeneralInformation : {
    $Type : 'UI.FieldGroupType',
    Data: [
        {Value: ID, Label: 'GerätetypID'},
        {Value: name, Label: 'Bezeichnung'}
    ]
},


/*LineItem#Geraete  : [
    {Value: verbindung.ID, Label: 'GeräteID'},
    {Value: verbindung.status, Label: 'Status'}
],*/

FieldGroup#Geraete  : {
    $Type : 'UI.FieldGroupType',
    Data: [
        {Value: verbindung.ID, Label: 'GeräteID'},
        {Value: verbindung.status, Label: 'Status'}
    ]
},

Facets  : [
    {$Type: 'UI.CollectionFacet',
    //Label: 'Test',
    //ID: 'Tester',
    Facets : [
        {$Type: 'UI.ReferenceFacet',
        Label: 'Geräte',
        ID: 'Geraete',
        //Target: '@UI.LineItem#Geraete'}
        Target: '@UI.FieldGroup#Geraete'}
    ]}
],
//Ende Eingefügt     
}
)

//Rufat-Begin
{
    verbindung @( 
        Common: {
            Label: 'Label',
            ValueList : {
                $Type : 'Common.ValueListType',
                CollectionPath : 'Geraete',
                Parameters : [
                    {$Type: 'Common.ValueListParameterInOut', 
                    LocalDataProperty: 'verbindung_ID', 
                    ValueListProperty: 'ID'},

                    {$Type: 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'ID'},
                ]
            },
        }
    )
}
//Rufat-Ende


;




