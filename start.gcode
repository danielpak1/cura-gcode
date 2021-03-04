; Ender 3 Custom Start G-code
M117 Initiating start up

M104 S180 ; Set extruder to 180
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M117 Extruder & Bed Heating in Progress...

M569 S1 X Y Z E; enable stealthchop
G28 ;       Home Axes

M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
G92 E0;     set extruder position to 0



G29 ; Auto bed-level (BL-Touch)

M104 S{material_print_temperature_layer_0} ; Set Extruder temperature

G1 Z3.0 F5000.0 ; Raise the nozzle to prevent scratching
G1 X0.1 Y20 Z3.0 F5000.0 ; move to start-line position
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature
M117 Extruder heating complete.

G1 Z.03 E4.9; return filament and and lower nozzle
G92 E0 ; Reset Extruder
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; draw 1st line
M117 Purge Complete.

G92 E0 ; reset extruder
G1 Z2.0 F3000 ; move z up little to prevent scratching of surface
; End of custom start GCode;