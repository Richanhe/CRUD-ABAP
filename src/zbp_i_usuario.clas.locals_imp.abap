CLASS lhc_ZI_USUARIO DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR zi_usuario RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR zi_usuario RESULT result.

    METHODS softdelete FOR MODIFY
      keys FOR ACTION zi_usuario~softDelete.

    METHODS restore FOR MODIFY
      keys FOR ACTION zi_usuario~restore.

ENDCLASS.

CLASS lhc_ZI_USUARIO IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD softDelete.

    GET TIME STAMP FIELD DATA(lv_timestamp).

    MODIFY ENTITIES OF zi_usuario IN LOCAL MODE
        ENTITY zi_usuario
        UPDATE FIELDS ( deleted_at )
        WITH VALUE #(
            FOR key IN keys
            (
                %tky = key-%tky
                deleted_at = lv_timestamp
            )
        ).

  ENDMETHOD.

  METHOD restore.

    MODIFY ENTITIES OF zi_usuario IN LOCAL MODE
        ENTITY zi_usuario
        UPDATE FIELDS ( deleted_at )
        WITH VALUE #(
            FOR key IN keys
            (
                %tky = key-%tky
                deleted_at = VALUE #(  )
            )

        ).

  ENDMETHOD.

ENDCLASS.
