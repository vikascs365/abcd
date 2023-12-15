@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zC_student_100
  as projection on zI_student_100
{
      @EndUserText.label: 'Student Id'
  key Id,
      @EndUserText.label: 'First Name'
      Firstname,
      @EndUserText.label: 'Last Name'
      Lastname,
      @EndUserText.label: 'Age'
      Age,
      @EndUserText.label: 'Course'
      Course,
      @EndUserText.label: 'Course Duration'
      Courseduration,
      @EndUserText.label: 'Status '
      Status,
      @EndUserText.label: 'Gender'
      Gender,
      @EndUserText.label: 'DOB'
      Dob,
      @EndUserText.label: 'Last Change date'
      Lastchangedat,
      @EndUserText.label: 'Local Last Change'
      Locallastchangedat
}
