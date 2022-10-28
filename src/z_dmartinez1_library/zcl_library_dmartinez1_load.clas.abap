CLASS zcl_library_dmartinez1_load DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LIBRARY_DMARTINEZ1_LOAD IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_acc_categ    TYPE TABLE OF ztb_acc_categ_dm,
          lt_catego       TYPE TABLE OF ztb_catego_dm,
          lt_clientes     TYPE TABLE OF ztb_clientes_dm,
          lt_clientes_lib TYPE TABLE OF ztb_clnts_lib_dm,
          lt_libros       TYPE TABLE OF ztb_libros_dm.

    "Acceso categorías
    lt_acc_categ = VALUE #(
    ( bi_categ = 'A' tipo_acceso = '1' )
    ( bi_categ = 'B' tipo_acceso = '1' )
    ( bi_categ = 'C' tipo_acceso = '1' )
    ( bi_categ = 'D' tipo_acceso = '1' )
    ( bi_categ = 'E' tipo_acceso = '1' )
    ( bi_categ = 'F' tipo_acceso = '1' )
     ).

    DELETE FROM ztb_acc_categ_dm.
    INSERT ztb_acc_categ_dm FROM TABLE @lt_acc_categ.

    SELECT * FROM ztb_acc_categ_dm INTO TABLE @lt_acc_categ.
    out->write( sy-dbcnt ).
    out->write( ' ztb_acc_categ_dm OK ' ).

    "Categorías
    lt_catego = VALUE #(
    ( bi_categ = 'A' descripcion = 'Categoría A' )
    ( bi_categ = 'B' descripcion = 'Categoría B' )
    ( bi_categ = 'C' descripcion = 'Categoría C' )
    ( bi_categ = 'D' descripcion = 'Categoría D' )
    ( bi_categ = 'E' descripcion = 'Categoría D' )
    ( bi_categ = 'F' descripcion = 'Categoría F' )
    ).
    DELETE FROM ztb_catego_dm.
    INSERT ztb_catego_dm FROM TABLE @lt_catego.

    SELECT * FROM ztb_catego_dm INTO TABLE @lt_catego.
    out->write( sy-dbcnt ).
    out->write( ' ztb_catego_dm OK ' ).

    "Clientes
    lt_clientes = VALUE #(
    ( id_cliente = 'CLIENTE 1' tipo_acceso = '1'  nombre = 'Diego' apellidos = 'Martinez Ruiz' email = 'dmr@mail.com' url = 'http://google.es')
    ( id_cliente = 'CLIENTE 2' tipo_acceso = '1'  nombre = 'Marta' apellidos = 'Martinez Ruiz' email = 'dmr@mail.com' url = 'http://google.es')
    ( id_cliente = 'CLIENTE 3' tipo_acceso = '1'  nombre = 'Juan' apellidos = 'Martinez Ruiz' email = 'dmr@mail.com' url = 'http://google.es')
    ( id_cliente = 'CLIENTE 4' tipo_acceso = '1'  nombre = 'Alfonso' apellidos = 'Martinez Ruiz' email = 'dmr@mail.com' url = 'http://google.es')
    ( id_cliente = 'CLIENTE 5' tipo_acceso = '1'  nombre = 'Jose' apellidos = 'Martinez Ruiz' email = 'dmr@mail.com' url = 'http://google.es')
    ( id_cliente = 'CLIENTE 6' tipo_acceso = '1'  nombre = 'Lucía' apellidos = 'Martinez Ruiz' email = 'dmr@mail.com' url = 'http://google.es')
    ).
    DELETE FROM ztb_clientes_dm.
    INSERT ztb_clientes_dm FROM TABLE @lt_clientes.

    SELECT * FROM ztb_clientes_dm INTO TABLE @lt_clientes.
    out->write( sy-dbcnt ).
    out->write( ' ztb_clientes_dm OK ' ).

    "Libros
    lt_libros = VALUE #(
    ( id_libro = 'AVENTURA'     bi_categ = 'A' titulo = 'La aventura del poder' )
    ( id_libro = 'BARCOS'       bi_categ = 'B' titulo = 'La aventura del poder' )
    ( id_libro = 'COMIDA'       bi_categ = 'C' titulo = 'La aventura del poder' )
    ( id_libro = 'DIALECTICA'   bi_categ = 'D' titulo = 'La aventura del poder' )
    ( id_libro = 'EMPRESA'      bi_categ = 'E' titulo = 'La aventura del poder' )
    ).
    DELETE FROM ztb_libros_dm.
    INSERT ztb_libros_dm FROM TABLE @lt_libros.

    SELECT * FROM ztb_libros_dm INTO TABLE @lt_libros.
    out->write( sy-dbcnt ).
    out->write( ' ztb_libros_dm OK ' ).

    "Libros cliente
    lt_clientes_lib = VALUE #(
    ( id_cliente = 'CLIENTE 1' id_libro = 'AVENTURA')
    ( id_cliente = 'CLIENTE 2' id_libro = 'AVENTURA')
    ( id_cliente = 'CLIENTE 2' id_libro = 'BARCOS')
    ( id_cliente = 'CLIENTE 3' id_libro = 'AVENTURA')
    ( id_cliente = 'CLIENTE 4' id_libro = 'AVENTURA')
    ( id_cliente = 'CLIENTE 5' id_libro = 'AVENTURA')
    ( id_cliente = 'CLIENTE 3' id_libro = 'BARCOS')
    ( id_cliente = 'CLIENTE 2' id_libro = 'EMPRESA')
    ).
    DELETE FROM ztb_clnts_lib_dm.
    INSERT ztb_clnts_lib_dm FROM TABLE @lt_clientes_lib.

    SELECT * FROM ztb_clnts_lib_dm INTO TABLE @lt_clientes_lib.
    out->write( sy-dbcnt ).
    out->write( ' ztb_clnts_lib_dm OK ' ).



  ENDMETHOD.
ENDCLASS.
