using { sap.capire.products as db } from '../db/schema.cds';

service AdminService {
    entity Products   as projection on db.Products;
    entity Categories as projection on db.Categories;
}