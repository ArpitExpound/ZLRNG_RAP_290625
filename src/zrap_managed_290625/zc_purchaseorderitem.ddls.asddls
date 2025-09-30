@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Item'
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_PurchaseOrderItem
  as projection on ZR_PurchaseOrderItem
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
      
      poh : redirected to parent ZC_PurchaseOrderHeader 
}
