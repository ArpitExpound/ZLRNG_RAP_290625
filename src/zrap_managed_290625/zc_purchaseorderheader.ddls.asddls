@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Header Projection Root View'
@Metadata.allowExtensions: true
define root view entity ZC_PurchaseOrderHeader 
    as projection on ZR_PurchaseOrderHeader as poh
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
        
        poi : redirected to composition child ZC_PurchaseOrderItem
}
