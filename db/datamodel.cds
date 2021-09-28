namespace datamodel.db;

using {managed, cuid} from '@sap/cds/common';

entity Geraetetyp : managed {
    key ID : Integer;
    name : String(30);
    verbindung: Association to Geraete;
}


entity Geraete : managed {
    key ID : Integer;
    status : String(10);
    //verbindung : Association to Geraetetyp;
}