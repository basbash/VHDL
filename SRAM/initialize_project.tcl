project_new "memoire" -overwrite
set_global_assignment -name FAMILY "Cyclone IV"
set_global_assignment -name DEVICE "EP4CE115F29C7"

# Atribuição de pinos para os sram_addr
set_location_assignment PIN_AB7 -to sram_addr[0]
set_location_assignment PIN_AD7 -to sram_addr[1]
set_location_assignment PIN_AE7 -to sram_addr[2]
set_location_assignment PIN_AC7 -to sram_addr[3]
set_location_assignment PIN_AB6 -to sram_addr[4]
set_location_assignment PIN_AE6 -to sram_addr[5]
set_location_assignment PIN_AB5 -to sram_addr[6]
set_location_assignment PIN_AC5 -to sram_addr[7]
set_location_assignment PIN_AF5 -to sram_addr[8]
set_location_assignment PIN_T7  -to sram_addr[9]
set_location_assignment PIN_AF2 -to sram_addr[10]
set_location_assignment PIN_AD3 -to sram_addr[11]
set_location_assignment PIN_AB4 -to sram_addr[12]
set_location_assignment PIN_AC3 -to sram_addr[13]
set_location_assignment PIN_AA4 -to sram_addr[14]
set_location_assignment PIN_AB11 -to sram_addr[15]
set_location_assignment PIN_AC11 -to sram_addr[16]
set_location_assignment PIN_AB9 -to sram_addr[17]
set_location_assignment PIN_AB8 -to sram_addr[18]
set_location_assignment PIN_T8  -to sram_addr[19]

# Atribuição de pinos para os sram_data
set_location_assignment PIN_AH3 -to sram_data[0]
set_location_assignment PIN_AF4 -to sram_data[1]
set_location_assignment PIN_AG4 -to sram_data[2]
set_location_assignment PIN_AH4 -to sram_data[3]
set_location_assignment PIN_AF6 -to sram_data[4]
set_location_assignment PIN_AG6 -to sram_data[5]
set_location_assignment PIN_AH6 -to sram_data[6]
set_location_assignment PIN_AF7 -to sram_data[7]
set_location_assignment PIN_AD1 -to sram_data[8]
set_location_assignment PIN_AD2 -to sram_data[9]
set_location_assignment PIN_AE2 -to sram_data[10]
set_location_assignment PIN_AE1 -to sram_data[11]
set_location_assignment PIN_AE3 -to sram_data[12]
set_location_assignment PIN_AE4 -to sram_data[13]
set_location_assignment PIN_AF3 -to sram_data[14]
set_location_assignment PIN_AG3 -to sram_data[15]

set_location_assignment PIN_AD5 -to sram_oenn
set_location_assignment PIN_AE8 -to sram_wenn
set_location_assignment PIN_AF8 -to sram_csel

set_location_assignment PIN_Y2 -to clock

set_location_assignment PIN_M23 -to control_write
set_location_assignment PIN_M21 -to control_read

set_location_assignment PIN_G19 -to led_matr[0]
set_location_assignment PIN_F19 -to led_matr[1]
set_location_assignment PIN_E19 -to led_matr[2]
set_location_assignment PIN_F21 -to led_matr[3]
set_location_assignment PIN_F18 -to led_matr[4]
set_location_assignment PIN_E18 -to led_matr[5]
set_location_assignment PIN_J19 -to led_matr[6]
set_location_assignment PIN_H19 -to led_matr[7]
set_location_assignment PIN_J17 -to led_matr[8]
set_location_assignment PIN_G17 -to led_matr[9]
set_location_assignment PIN_J15 -to led_matr[10]
set_location_assignment PIN_H16 -to led_matr[11]
set_location_assignment PIN_J16 -to led_matr[12]
set_location_assignment PIN_H17 -to led_matr[13]
set_location_assignment PIN_F15 -to led_matr[14]
set_location_assignment PIN_G15 -to led_matr[15]

set_location_assignment PIN_AB28 -to sw_matr[0]
set_location_assignment PIN_AC28 -to sw_matr[1]
set_location_assignment PIN_AC27 -to sw_matr[2]
set_location_assignment PIN_AD27 -to sw_matr[3]
set_location_assignment PIN_AB27 -to sw_matr[4]
set_location_assignment PIN_AC26 -to sw_matr[5]
set_location_assignment PIN_AD26 -to sw_matr[6]
set_location_assignment PIN_AB26 -to sw_matr[7]
set_location_assignment PIN_AC25 -to sw_matr[8]
set_location_assignment PIN_AB25 -to sw_matr[9]
set_location_assignment PIN_AC24 -to sw_matr[10]
set_location_assignment PIN_AB24 -to sw_matr[11]
set_location_assignment PIN_AB23 -to sw_matr[12]
set_location_assignment PIN_AA24 -to sw_matr[13]
set_location_assignment PIN_AA23 -to sw_matr[14]
set_location_assignment PIN_AA22 -to sw_matr[15]
