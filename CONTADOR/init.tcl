project_new "contador" -overwrite
set_global_assignment -name FAMILY "Cyclone IV"
set_global_assignment -name DEVICE "EP4CE115F29C7"
set_global_assignment -name TOP_LEVEL_ENTITY contador

set_location_assignment PIN_Y2 -to clk
set_location_assignment PIN_H22 -to ds1[6]
set_location_assignment PIN_J22 -to ds1[5]
set_location_assignment PIN_L25 -to ds1[4]
set_location_assignment PIN_L26 -to ds1[3]
set_location_assignment PIN_E17 -to ds1[2]
set_location_assignment PIN_F22 -to ds1[1]
set_location_assignment PIN_G18 -to ds1[0]
