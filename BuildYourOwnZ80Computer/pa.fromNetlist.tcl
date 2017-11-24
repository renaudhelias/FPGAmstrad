
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name BuildYourOwnZ80Computer -dir "C:/Users/freemac/BuildYourOwnZ80Computer/planAhead_run_3" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/freemac/BuildYourOwnZ80Computer/amstrad_switch_z80_vga.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/freemac/BuildYourOwnZ80Computer} }
set_param project.paUcfFile  "amstrad_switch_z80_vga.ucf"
add_files "amstrad_switch_z80_vga.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
