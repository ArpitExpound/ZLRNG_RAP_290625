@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Header'
@ObjectModel.usageType:{
     serviceQuality: #X,
     sizeCategory: #S,
     dataClass: #MIXED
 }    
define view entity ZI_PurchaseOrderHeader 
    as select from yekko
{
    key purchase_id  as PurchaseId,
    company_code     as CompanyCode,
    doc_category     as DocCategory,
    doc_type         as DocType,
    vendor_id        as VendorId,
    purch_org        as PurchOrg,
    purch_group      as PurchGroup,
    currency         as Currency,
    doc_date         as DocDate,
    changed_on       as ChangedOn,
    incoterms1       as Incoterms1,
    incoterms2       as Incoterms2,
    payment_terms    as PaymentTerms,
    language         as Language,
    status           as Status,
    locallastchanged as Locallastchanged,
    lastchanged      as Lastchanged,
    createdby        as Createdby,
    changedby        as Changedby
}
