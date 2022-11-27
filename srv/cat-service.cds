using sapbuildproducts as sapbuildproducts from '../db/data-model';

service CatalogService {// @( requires:'authenticated-user') {
 
     entity Products as projection on sapbuildproducts.Products ;

    type product {};

    function getEAN (barcode: String)  returns product;

 

}
