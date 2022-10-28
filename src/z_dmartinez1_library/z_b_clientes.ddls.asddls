@AbapCatalog.sqlViewName: 'ZVCLIENTESDMR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
define view z_b_clientes
  as select from ztb_clientes_dm  as clientes
    inner join   ztb_clnts_lib_dm as clnt_lib on clientes.id_cliente = clnt_lib.id_cliente
{
  key clnt_lib.id_libro   as IdLibro,
  key clientes.id_cliente as IdCliente,
  key tipo_acceso         as TipoAcceso,
      nombre              as Nombre,
      apellidos           as Apellidos,
      email               as Email,
      url                 as Url
}
