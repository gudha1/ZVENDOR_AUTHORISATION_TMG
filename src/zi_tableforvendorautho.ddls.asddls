@EndUserText.label: 'Table For Vendor Authorization'
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
define view entity ZI_TableForVendorAutho
  as select from zvendor_auth_tab
  association to parent ZI_TableForVendorAutho_S as _TableForVendorAuAll on $projection.SingletonID = _TableForVendorAuAll.SingletonID
{
  key tab_code as TabCode,
  key tab_name as TabName,
  user_id as UserId,
  create1 as Create1,
  change as Change,
  display as Display,
  deletion_user_id as DeletionUserId,
  approver_id_1 as ApproverId1,
  approver_id_2 as ApproverId2,
  @Semantics.user.createdBy: true
  localcreatedby as Localcreatedby,
  @Semantics.systemDateTime.createdAt: true
  localcreatedat as Localcreatedat,
  @Semantics.user.localInstanceLastChangedBy: true
  @Consumption.hidden: true
  locallastchangedby as Locallastchangedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  @Consumption.hidden: true
  locallastchangedat as Locallastchangedat,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchangedat as Lastchangedat,
  @Consumption.hidden: true
  1 as SingletonID,
  _TableForVendorAuAll
  
}
