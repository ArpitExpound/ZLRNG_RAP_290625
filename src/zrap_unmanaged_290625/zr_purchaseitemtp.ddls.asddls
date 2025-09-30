@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forPurchaseItem'
define view entity ZR_PurchaseItemTP
  as select from yekpo as PurchaseItem
  association to parent ZR_PurchaseHeader01TP as _PurchaseHeader on $projection.PurchaseID = _PurchaseHeader.PurchaseID
{
  key purchase_id as PurchaseID,
  key item_no as ItemNo,
  material_id as MaterialID,
  plant as Plant,
  storage_location as StorageLocation,
  @Semantics.quantity.unitOfMeasure: 'Unit'
  quantity as Quantity,
  unit as Unit,
  @Semantics.amount.currencyCode: 'Currency'
  net_price as NetPrice,
  currency as Currency,
  delivery_date as DeliveryDate,
  account_assignment as AccountAssignment,
  item_catergory as ItemCatergory,
  created_on as CreatedOn,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchanged as Locallastchanged,
  lastchanged as Lastchanged,
  createdby as Createdby,
  changedby as Changedby,
  _PurchaseHeader
  
}
