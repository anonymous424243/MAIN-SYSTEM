#i3 config file (v4)
#
# KEYS
set $mod Control
set $mod2 Shift
set $mod3 mod1
#font mod
font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

#######################################################
exec --no-startup-id dex --autostart --environment i3
################################################################################################
exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork
#################################################################################################
# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a desktop environment-independent system tray GUI for it.
exec --no-startup-id nm-applet
default_border pixel 1
default_floating_border pixel 1
##################################################################################################
# mouse mods
focus_follows_mouse no
###################################################################################################
# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod
##############################################################################################






# start a terminal
bindsym $mod+Return exec urxvt 














# scratchpad
bindsym $mod+0 scratchpad show
bindsym $mod+Shift+0 move scratchpad
##############################################################################################
focus_on_window_activation focus
bindsym $mod+t split toggle
############################################################################################
#terminal mod
#urxvt
for_window [class="URxvt"] border pixel 2
for_window [class=URxvt] sticky enable
#xterm
bindsym $mod2+Return exec xterm
for_window [class="XTerm"] floating disable
###############################################################################################
# dir buster
for_window [class="com-sittinglittleduck-DirBuster-Start"] floating enable
###############################################################################################





##########################################################
#title mod
hide_edge_borders both
title_align center
for_window [all] title_window_icon off
mouse_warping none
focus_on_window_activation focus
################################################################################################
#wallpaper
exec_always feh --bg-scale --zoom fill /home/7R4C3/wallpaper.jpg
################################################################################################
# kill focused window
bindsym $mod+BackSpace kill
bindsym --whole-window $mod+button8 kill 
bindsym --whole-window $mod+button9 exec urxvt
########################################################################
#download manager
for_window [class="Motrix"] border pixel 0
for_window [class=Motrix] sticky enable
for_window [class="Motrix"] floating enable  



#wireshark mod
for_window [class=Wireshark] border pixel 1
for_window [class=Wireshark] floating enable


##################################################################################################
#wireshark mod
for_window [class=Xfce4-settings-manage] border pixel 1
for_window [class=Xfce4-settings-manage] floating enable
##################################################################################################
# menu mod (a program launcher)
bindsym $mod+d exec --no-startup-id rofi -show combi
######################################################################################################
# lock screen
bindsym $mod+Escape exec i3lock --image /home/7R4C3/lock.png
#####################################################################################################
#alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right
####################################################################################################
# floating window size
floating_minimum_size 75 x 50
floating_maximum_size -1 x -1
workspace_auto_back_and_forth yes
focus_on_window_activation smart
default_orientation auto
workspace_layout default
force_focus_wrapping yes
################################################################################
# move focused window
bindsym $mod+Shift+a move left
bindsym $mod+Shift+s move down
bindsym $mod+Shift+w move up
bindsym $mod+Shift+d move right
####################################################################################################
# internet mod
bindsym $mod+F1 exec google-chrome
#####################################################################################################



# fullscreen mod
bindsym $mod+Insert fullscreen toggle
#################################################################################################
# change container layout (stacked, tabbed, toggle split)
bindsym $mod+q layout toggle split
###############################################################################################
# toggle tiling / floating
bindsym $mod+space floating toggle
################################################################################################
# sound mod
bindsym $mod+F11 exec amixer -D pulse sset Master 5%+
bindsym $mod+F10 execamixer -D pulse sset Master 5%-
bindsym $mod+F9 exec amixer set Master toggle
################################################################################################
# workspaces mod
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
###################################################################################################
# switch to workspace
bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4
bindsym $mod+5 workspace number $ws5
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8
bindsym $mod+9 workspace number $ws9
###############################################################################################
# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9
###############################################################################################
# refresh os mod
bindsym $mod2+r restart
###############################################################################################        
#screenshot mod
bindsym $mod+Prior exec flameshot gui
###############################################################################################
# move focused window
bindsym $mod2+Left move left
bindsym $mod2+Down move down
bindsym $mod2+Up move up
bindsym $mod2+Right move right
###############################################################################################
# change focus between tiling / floating windows
 bindsym $mod2+space focus mode_toggle




# email mod
for_window [class="thunderbird"] floating enable
#for_window [class="thunderbird] resize set 900 500
########################################################################################







# split containers
bindsym $mod+b split v
bindsym $mod+n split h
#############################################################################################

# sticky mode
bindsym $mod+minus sticky toggle
#################################################################################


# change focus between foreground and background
# focus the parent container
bindsym $mod+g focus parent
# focus the child container
bindsym $mod+h focus child
##################################################################################


bar {
        status_command i3bar
}



colors {
        background #000000
        statusline #ff0015
        separator #ff0015

        focused_workspace  #00ffff #00ffff #00ffff
        active_workspace   #333333 #5f676a #ffffff
        inactive_workspace #000000 #000000 #000000
        urgent_workspace   #00ffff #00ffff #00ffff
    }


