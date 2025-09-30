@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.sapObjectNodeType.name: 'ZSALESORDERH'
define root view entity ZR_SALESORDERH
  as select from ZSALESORDERH as soheader
{
  key sales_order as SalesOrder,
  doc_type as DocType,
  sales_org as SalesOrg,
  distr_channel as DistrChannel,
  division as Division,
  sold_to_party as SoldToParty,
  customer_first_name as CustomerFirstName,
  customer_last_name as CustomerLastName,
  order_date as OrderDate,
  created_on as CreatedOn,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchanged as Locallastchanged,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchanged as Lastchanged,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.lastChangedBy: true
  changedby as Changedby
  
}
