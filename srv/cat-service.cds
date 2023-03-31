using sapbuildproducts as sapbuildproducts from '../db/data-model';


service CatalogService {// @( requires:'authenticated-user') {
     @odata.draft.enabled
    entity ProductsFiori as projection on sapbuildproducts.Products 

     entity Products as projection on sapbuildproducts.Products ;

    type product {};

    function getEAN (barcode: String)  returns product;

}
