@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Item'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_PurchaseOrderItem
  as select from ZI_PurchaseOrderItem
  
  association to parent ZR_PurchaseOrderHeader as poh on $projection.PurchaseId = poh.PurchaseId
{
  key PurchaseId,
  key ItemNo,
      MaterialId,
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
      
      poh
}
