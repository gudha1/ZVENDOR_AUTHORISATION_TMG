@AbapCatalog.sqlViewName: 'YMDMVENATUH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view zvendor_auth_cds as select from zvendor_auth_tab
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
    localcreatedby as Localcreatedby,
    localcreatedat as Localcreatedat,
    locallastchangedby as Locallastchangedby,
    locallastchangedat as Locallastchangedat,
    lastchangedat as Lastchangedat
}
