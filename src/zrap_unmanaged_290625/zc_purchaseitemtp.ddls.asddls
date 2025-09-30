@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forPurchaseItem'
@ObjectModel.semanticKey: [ 'ItemNo' ]
@Search.searchable: true
define view entity ZC_PurchaseItemTP
  as projection on ZR_PurchaseItemTP as PurchaseItem
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key PurchaseID,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key ItemNo,
  MaterialID,
  Plant,
  StorageLocation,
  @Semantics.quantity.unitOfMeasure: 'Unit'
  Quantity,
  @Semantics.unitOfMeasure: true
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_UnitOfMeasure', 
      element: 'UnitOfMeasure'
    }, 
    useForValidation: true
  } ]
  Unit,
  @Semantics.amount.currencyCode: 'Currency'
  NetPrice,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Currency', 
      element: 'Currency'
    }, 
    useForValidation: true
  } ]
  Currency,
  DeliveryDate,
  AccountAssignment,
  ItemCatergory,
  CreatedOn,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby,
  _PurchaseHeader : redirected to parent ZC_PurchaseHeader01TP
  
}
