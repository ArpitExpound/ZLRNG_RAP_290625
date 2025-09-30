@AbapCatalog.viewEnhancementCategory: [ #NONE] 
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Item'
@ObjectModel.usageType:{
     serviceQuality: #X,
     sizeCategory: #S,
     dataClass: #MIXED
 }
define view entity ZI_PurchaseOrderItem 
    as select from yekpo
{
    key purchase_id    as PurchaseId,
    key item_no        as ItemNo,
    material_id        as MaterialId,
    plant              as Plant,
    storage_location   as StorageLocation,
    quantity           as Quantity,
    unit               as Unit,
    net_price          as NetPrice,
    currency           as Currency,
    delivery_date      as DeliveryDate,
    account_assignment as AccountAssignment,
    item_catergory     as ItemCatergory,
    created_on         as CreatedOn,
    locallastchanged   as Locallastchanged,
    lastchanged        as Lastchanged,
    createdby          as Createdby,
    changedby          as Changedby
}
