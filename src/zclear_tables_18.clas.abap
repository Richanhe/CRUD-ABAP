CLASS zclear_tables_18 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zclear_tables_18 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DELETE FROM ztb_u_h.
    DELETE FROM ztb_hobbies.

    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.

*CLASS zclear_tables DEFINITION

*  PUBLIC
*  FINAL
*  CREATE PUBLIC.

*  PUBLIC SECTION.
*    INTERFACES if_oo_adt_classrun.

*ENDCLASS.

*CLASS zclear_tables IMPLEMENTATION.

*  METHOD if_oo_adt_classrun~main.

*    DATA ls_employee TYPE zemploye.

*    ls_employee-emp_id      = '1002'.
*    ls_employee-name        = 'Indranil'.
*    ls_employee-department  = 'AI & ML'.
*    ls_employee-salary      = '65000.00'.
*    ls_employee-city        = 'Bangalore'.

*    INSERT zemploye FROM @ls_employee.

*    IF sy-subrc = 0.
*      out->write( 'Employee Inserted Successfully!' ).
*    ELSE.
*      out->write( 'Employee Already Exists!' ).
*    ENDIF.

*  ENDMETHOD.

*ENDCLASS.

