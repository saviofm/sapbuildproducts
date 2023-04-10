using sapbuildproducts as sapbuildproducts from '../db/data-model';


service CatalogService {// @( requires:'authenticated-user') {
     @odata.draft.enabled
    entity ProductsFiori as projection on sapbuildproducts.Products 

    entity Products as projection on sapbuildproducts.Products ;

}

annotate CatalogService.ProductsFiori with {
    image @(
    UI.ImageUrl: true,
    title       : '{i18n>image}',
    description : '{i18n>image}',
  );
};