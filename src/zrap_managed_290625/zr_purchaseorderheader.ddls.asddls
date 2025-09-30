@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Header Root View'
@Metadata.allowExtensions: true
define root view entity ZR_PurchaseOrderHeader 
    as select from ZI_PurchaseOrderHeader as poh
    
    composition [0..*] of ZR_PurchaseOrderItem as poi
{
    key PurchaseId,
        CompanyCode,
        DocCategory,
        DocType,
        VendorId,
        PurchOrg,
        PurchGroup,
        Currency,
        DocDate,
        ChangedOn,
        Incoterms1,
        Incoterms2,
        PaymentTerms,
        Language,
        Status,
        Locallastchanged,
        Lastchanged,
        Createdby,
        Changedby,
        
        poi
}
