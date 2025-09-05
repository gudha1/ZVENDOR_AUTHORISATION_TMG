@EndUserText.label: 'Table For Vendor Authorization Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'TableForVendorAuAll'
  }
}
define root view entity ZI_TableForVendorAutho_S
  as select from I_Language
    left outer join zvendor_auth_tab on 0 = 0
  association [0..*] to I_ABAPTransportRequestText as _ABAPTransportRequestText on $projection.TransportRequestID = _ABAPTransportRequestText.TransportRequestID
  composition [0..*] of ZI_TableForVendorAutho as _TableForVendorAutho
{
  @UI.facet: [ {
    id: 'ZI_TableForVendorAutho', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'Table For Vendor Authorization', 
    position: 1 , 
    targetElement: '_TableForVendorAutho'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key 1 as SingletonID,
  _TableForVendorAutho,
  @UI.hidden: true
  max( zvendor_auth_tab.lastchangedat ) as LastChangedAtMax,
  @ObjectModel.text.association: '_ABAPTransportRequestText'
  @UI.identification: [ {
    position: 2 , 
    type: #WITH_INTENT_BASED_NAVIGATION, 
    semanticObjectAction: 'manage'
  } ]
  @Consumption.semanticObject: 'CustomizingTransport'
  cast( '' as sxco_transport) as TransportRequestID,
  _ABAPTransportRequestText
  
}
where I_Language.Language = $session.system_language
