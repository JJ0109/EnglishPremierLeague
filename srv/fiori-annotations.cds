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
) ;*/


annotate SlahService.Geraetetyp with @(
UI : {
       SelectionFields: [],
    LineItem: [
      { Value: ID, Label: 'Geraetetypid' },            
      { Value: verbindung.ID, Label: 'Geraeteid' },  
      { Value: name },
      { Value: verbindung.status, Label: 'status' }
    ] 
}
);

