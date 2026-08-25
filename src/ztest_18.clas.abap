CLASS ztest_18 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztest_18 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA hobby TYPE ztb_hobbies.
    hobby-name = 'Jogar bola'.
    INSERT ztb_hobbies FROM @hobby.

    IF sy-subrc = 0.
      out->write( 'Registro inserido com sucesso!' ).
    ELSE.
      out->write( 'Erro ao inserir: registro com esta chave já existe.' ).
    ENDIF.

    DATA user_hobby TYPE ztb_u_h.
    user_hobby-hobby_id = '00000000000000000000000000000000'.
    user_hobby-user_id = '3ECE2E5790C11FE1A7ADE74DF551F5CF'.
    INSERT ztb_u_h FROM @user_hobby.

  ENDMETHOD.
ENDCLASS.
