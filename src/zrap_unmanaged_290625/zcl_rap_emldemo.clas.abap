CLASS zcl_rap_emldemo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RAP_EMLDEMO IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  READ ENTITIES OF ZR_PurchaseOrderHeader
*  ENTITY poh
*    ALL FIELDS WITH
*  VALUE #( ( PurchaseId = '45000001' ) )
*  RESULT DATA(PurchaseOrders).

*  OUT->write( purchaseorders ).


  MODIFY ENTITIES OF ZR_PurchaseOrderHeader
  ENTITY poh
    DELETE FROM
  VALUE #( ( PurchaseId = '45000002') )

  MAPPED DATA(mapped)
  FAILED DATA(failed)
  REPORTED DATA(reported).

  COMMIT ENTITIES
  RESPONSE OF ZR_PurchaseOrderHeader
  FAILED DATA(failed_c)
  REPORTED DATA(reported_c).

  OUT->write( mapped-poh ).
  OUT->write( failed ).
  OUT->write( reported ).

  OUT->write( failed_c ).
  OUT->write( reported_c ).


  ENDMETHOD.
ENDCLASS.
