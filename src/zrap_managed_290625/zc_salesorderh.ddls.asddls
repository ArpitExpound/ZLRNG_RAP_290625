@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.sapObjectNodeType.name: 'ZSALESORDERH'
define root view entity ZC_SALESORDERH
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_SALESORDERH
{
  key SalesOrder,
  DocType,
  SalesOrg,
  DistrChannel,
  Division,
  SoldToParty,
  CustomerFirstName,
  CustomerLastName,
  OrderDate,
  CreatedOn,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby
  
}
