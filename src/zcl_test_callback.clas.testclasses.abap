class ltc_main definition
      for testing
      duration short
      risk level harmless.
  private section.
    methods test for testing.
endclass.
class ltc_main implementation.
  method test.
    DATA(xml) = zcl_test_callback=>main( ).
    cl_abap_unit_assert=>assert_equals( ACT = xml EXP = '<root>Hello</root>' ).
  endmethod.
endclass.
