@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forPurchaseHeader'
define root view entity ZI_PurchaseHeader02TP
  provider contract transactional_interface
  as projection on ZR_PurchaseHeader01TP as PurchaseHeader
{
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
      _PurchaseItem : redirected to composition child ZI_PurchaseItemTP

}
