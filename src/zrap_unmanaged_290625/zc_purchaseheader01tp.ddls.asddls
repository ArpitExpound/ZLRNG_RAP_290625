@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forPurchaseHeader'
@ObjectModel.semanticKey: [ 'PurchaseID' ]
@Search.searchable: true
define root view entity ZC_PurchaseHeader01TP
  provider contract transactional_query
  as projection on ZR_PurchaseHeader01TP as PurchaseHeader
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key PurchaseID,
  CompanyCode,
  DocCategory,
  DocType,
  VendorID,
  PurchOrg,
  PurchGroup,
  Currency,
  DocDate,
  CreatedBy,
  ChangedOn,
  Incoterms1,
  Incoterms2,
  PaymentTerms,
  Language,
  Status,
  Locallastchanged,
  Lastchanged,
  Created,
  Changedby,
  _PurchaseItem : redirected to composition child ZC_PurchaseItemTP
  
}
