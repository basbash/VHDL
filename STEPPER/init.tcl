project_new "stepper" -overwrite
set_global_assignment -name FAMILY "Cyclone IV"
set_global_assignment -name DEVICE "EP4CE115F29C7"
set_global_assignment -name TOP_LEVEL_ENTITY stepper

set_location_assignment PIN_Y2 -to clk
set_location_assignment PIN_M23 -to rst
set_location_assignment PIN_M21 -to sentido
set_location_assignment PIN_G19 -to step[3]
set_location_assignment PIN_F19 -to step[2]
set_location_assignment PIN_E19 -to step[1]
set_location_assignment PIN_F21 -to step[0]
