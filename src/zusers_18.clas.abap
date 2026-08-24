CLASS zusers_18 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES:
        tt_users TYPE STANDARD TABLE OF ztb_usuarios
            WITH EMPTY KEY.

    METHODS create_user
        IMPORTING
            iv_firstName TYPE ztb_usuarios-firstName
            iv_lastName TYPE ztb_usuarios-lastName
            iv_age TYPE ztb_usuarios-age.

    METHODS get_users
        RETURNING VALUE(rt_users) TYPE tt_users.

    METHODS edit_user
        IMPORTING
            iv_user_id TYPE ztb_usuarios-user_id
            iv_firstName TYPE ztb_usuarios-firstName
            iv_lastName TYPE ztb_usuarios-lastname
            iv_age TYPE ztb_usuarios-age.

    METHODS delete_user
        IMPORTING
            iv_user_id TYPE ztb_usuarios-user_id.

ENDCLASS.

CLASS zusers_18 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA users TYPE TABLE OF ztb_usuarios.

    "create_user(
    "    iv_firstName = 'Richard'
    "    iv_lastName = 'Kanheski'
    "    iv_age = 21
    ").

    "edit_user(
    "    iv_user_id = 1
    "    iv_firstName = 'Olá'
    "    iv_lastName = 'Mundo!'
    "    iv_age = 21
    ").

    "delete_user(
    "    iv_user_id = 1
    ").

    users = get_users(  ).

    LOOP AT users INTO DATA(user).

        out->write( user-firstName ).

    ENDLOOP.


  ENDMETHOD.

  METHOD create_user.

    DATA user TYPE ztb_usuarios.

    SELECT MAX( user_id )
        FROM ztb_usuarios
        INTO @DATA(last_id).

    if last_id IS INITIAL.
        user-user_id = 1.
    else.
        user-user_id = last_id + 1.
    endif.

    user-firstname = iv_firstName.
    user-lastname = iv_lastName.
    user-age = iv_age.

    INSERT ztb_usuarios FROM @user.

  ENDMETHOD.

  METHOD get_users.

    SELECT *
        FROM ztb_usuarios
        INTO TABLE @rt_users.

  ENDMETHOD.

  METHOD edit_user.

    UPDATE ztb_usuarios
        SET firstName = @iv_firstName,
            lastName = @iv_lastName,
            age = @iv_age
        WHERE
            user_id = @iv_user_id.

  ENDMETHOD.

  METHOD delete_user.

    DELETE FROM ztb_usuarios
        WHERE user_id = @iv_user_id.

  ENDMETHOD.
ENDCLASS.
