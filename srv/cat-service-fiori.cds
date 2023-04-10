using CatalogService from './cat-service';

//----------------------- Products  ---------------------//
//------------------------------------------------------//
//------------------------------------------------------//
//List Page
annotate CatalogService.ProductsFiori with @(UI: {
        LineItem: [

			{   
                $Type: 'UI.DataField', 
                Value: productName,
                ![@UI.Importance] : #High
            },
            {   
                $Type : 'UI.DataField', 
                Value : productDescription,
                ![@UI.Importance] : #High
            },
            {   
                $Type : 'UI.DataField', 
                Value : brand,
                ![@UI.Importance] : #High
            },
            {   
                $Type : 'UI.DataField', 
                Value : obs,
                ![@UI.Importance] : #High
            }
		],
        PresentationVariant : {
            $Type     : 'UI.PresentationVariantType',
            SortOrder : [{Property : productName}]
        },
        SelectionFields: [ 
            productName,
            productDescription,
            brand,
            EAN
        ],
	},
//Object Page
	UI: {
        HeaderInfo: {          
            Title : { 
                Value: productName
            },
            TypeName: '{i18n>Product}',
            TypeNamePlural: '{i18n>Products}',
            ImageUrl : image,
            ///TypeImageUrl : 'image/png',
            Description: { 
                Value: EAN 
            }, 
        },
		HeaderFacets            : [
        /*    {
                $Type             : 'UI.ReferenceFacet',
                Target            : '@UI.FieldGroup#Image',
                ![@UI.Importance] : #Medium
            },
        */
        ],
        FieldGroup #GeneralData: {
            $Type : 'UI.FieldGroupType',
			Data: [
                {
                    $Type : 'UI.DataField',
                    Value: productDescription
                },
                {
                    $Type : 'UI.DataField',
                    Value: brand
                },
                {
                    $Type : 'UI.DataField',
                    Value: obs
                }               
			]                        
        },

        // Page Facets
		Facets: [

            {    
                $Type: 'UI.ReferenceFacet', 
                Label: '{i18n>GeneralData}', 
                Target: '@UI.FieldGroup#GeneralData'
            }
        ]    
    }
);