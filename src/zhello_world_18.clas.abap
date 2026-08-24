CLASS zhello_world_18 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zhello_world_18 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA portaAberta TYPE abap_bool VALUE abap_false.

    if portaAberta.
        out->write( 'Pode passar' ).
    else.
        out->write( 'Não pode passar' ).
    endif.

  ENDMETHOD.
ENDCLASS.
