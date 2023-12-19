@AbapCatalog.sqlViewName: 'ZVCTRAVEL01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'travel consumption'
define view zvc_travel01 as select from /dmo/travel as travel
association [1] to zvI_Agency as _agency
    on $projection.agency_id = _agency.AgencyId
 association [1] to zvi_customer as _customer
    on $projection.customer_id = _customer.CustomerId   
  association [1] to I_Currency as _currency
    on $projection.currency_code = _currency.Currency      
{
 key travel.travel_id as TravelId,
 travel.agency_id as AgencyId,
 travel.customer_id as CustomerId,
 travel.begin_date as BeginDate,
 travel.end_date as EndDate,
 travel.booking_fee as BookingFee,
 travel.total_price as TotalPrice,
 travel.currency_code as CurrencyCode,
 travel.description as Description,
 travel.status as Status,
// travel.createdby as Createdby,
// travel.createdat as Createdat,
// travel.lastchangedby as Lastchangedby,
// travel.lastchangedat as Lastchangedat,   
    _agency, // Make association public
    _customer,
    _currency
}
