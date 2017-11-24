
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name BuildYourOwnZ80Computer -dir "C:/Users/freemac/BuildYourOwnZ80Computer/planAhead_run_1" -part xc3s200ft256-5
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/freemac/BuildYourOwnZ80Computer/amstrad_switch_z80_vga.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/freemac/BuildYourOwnZ80Computer} }
set_param project.paUcfFile  "amstrad_switch_z80_vga.ucf"
add_files "amstrad_switch_z80_vga.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "C:/Users/freemac/BuildYourOwnZ80Computer/amstrad_switch_z80_vga.xdl"
if {[catch {read_twx -name results_1 -file "C:/Users/freemac/BuildYourOwnZ80Computer/amstrad_switch_z80_vga.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/freemac/BuildYourOwnZ80Computer/amstrad_switch_z80_vga.twx\": $eInfo"
}
