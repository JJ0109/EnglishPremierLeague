namespace datamodel.db;

using datamodel.db as db from '../db/index';

service SlahService {
   /*@readonly
   entity Geraetetyp as projection on db.Geraetetyp;
   @readonly
   entity Geraete as select from db.Geraete order by ID desc;*/

    @readonly
   entity Geraete as projection on db.Geraete;
   @readonly
   entity Geraetetyp as select from db.Geraetetyp order by ID desc;
}