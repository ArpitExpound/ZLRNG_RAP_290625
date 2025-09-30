@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forPurchaseItem'
define view entity ZI_PurchaseItemTP
  as projection on ZR_PurchaseItemTP as PurchaseItem
{
  key PurchaseID,
  key ItemNo,
  MaterialID,
  Plant,
  StorageLocation,
  Quantity,
  Unit,
  NetPrice,
  Currency,
  DeliveryDate,
  AccountAssignment,
  ItemCatergory,
  CreatedOn,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby,
  _PurchaseHeader : redirected to parent ZI_PurchaseHeader02TP
  
}
