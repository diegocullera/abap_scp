@AbapCatalog.sqlViewName: 'ZVLIBROSDMR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view z_b_libros
  as select from    ztb_libros_dm    as libros
    inner join      ztb_catego_dm    as catego on libros.bi_categ = catego.bi_categ
    left outer join z_b_clientes_lib as ventas on libros.id_libro = ventas.IdLibro
  association [0..*] to z_b_clientes as _Clientes on $projection.IdLibro = _Clientes.IdLibro
{
  key libros.id_libro    as IdLibro,
      libros.bi_categ    as BiCateg,
      libros.titulo      as Titulo,
      libros.autor       as Autor,
      libros.editorial   as Editorial,
      libros.idioma      as Idioma,
      libros.paginas     as Paginas,
      @Semantics.amount.currencyCode: 'moneda'
      libros.precio      as Precio,
      @Semantics.currencyCode: true
      libros.moneda      as Moneda,
      case
      when ventas.Ventas < 1 then 0
      when ventas.Ventas = 1 then 1
      when ventas.Ventas = 2 then 2
      when ventas.Ventas >= 3 then 3
      else 0
      end                as Ventas,
      libros.formato     as Formato,
      libros.url         as Url,
      catego.descripcion as Categoria,
      _Clientes
}
