@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface view for the student'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zI_student_100
  as select from zstudent_100
{
  key id                 as Id,
      firstname          as Firstname,
      lastname           as Lastname,
      age                as Age,
      course             as Course,
      courseduration     as Courseduration,
      status             as Status,
      gender             as Gender,
      dob                as Dob,
      lastchangedat      as Lastchangedat,
      locallastchangedat as Locallastchangedat
}
