@AbapCatalog.sqlViewName: 'ZVACCCATDMR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias - Acceso'
define view z_b_acc_categ
  as select from ztb_acc_categ_dm
{
  key bi_categ    as BiCateg,
  key tipo_acceso as TipoAcceso
}
