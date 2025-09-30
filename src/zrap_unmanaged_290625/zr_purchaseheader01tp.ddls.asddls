@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forPurchaseHeader'
define root view entity ZR_PurchaseHeader01TP
  as select from yekko as PurchaseHeader
  composition [0..*] of ZR_PurchaseItemTP as _PurchaseItem
{
  key purchase_id as PurchaseID,
  company_code as CompanyCode,
  doc_category as DocCategory,
  doc_type as DocType,
  vendor_id as VendorID,
  purch_org as PurchOrg,
  purch_group as PurchGroup,
  currency as Currency,
  doc_date as DocDate,
  created_by as CreatedBy,
  changed_on as ChangedOn,
  incoterms1 as Incoterms1,
  incoterms2 as Incoterms2,
  payment_terms as PaymentTerms,
  language as Language,
  status as Status,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchanged as Locallastchanged,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchanged as Lastchanged,
  @Semantics.user.createdBy: true
  createdby as Created,
  @Semantics.user.lastChangedBy: true
  changedby as Changedby,
  _PurchaseItem
  
}
