namespace datamodel.db;

using {managed, cuid, sap.common.CodeList} from '@sap/cds/common';
//Begin Testlauf1
//Matches
entity Geraetetyp : managed {
    key ID : Integer;
    name : String(30);
    verbindung: Association to Geraete;
}

//Teams
entity Geraete : managed {
    key ID : Integer;
    status : String(10);
    //verbindung : Association to Geraetetyp;
}
//Ende Testlauf1
