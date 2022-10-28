@AbapCatalog.sqlViewName: 'ZVCATEGODMR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view z_b_catego
  as select from ztb_catego_dm
{
      @UI.hidden: true
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
