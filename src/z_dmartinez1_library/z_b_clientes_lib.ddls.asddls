@AbapCatalog.sqlViewName: 'ZVCLNTLIBDMR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes - Libros'
define view z_b_clientes_lib
  as select from ztb_clnts_lib_dm
{
  key id_libro                     as IdLibro,
      @DefaultAggregation: #COUNT_DISTINCT
      count( distinct id_cliente ) as Ventas
}
group by
  id_libro
