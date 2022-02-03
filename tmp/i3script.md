# mouse,capslock, touchscreen setup
# set key repeate rate
.xprofile

# clear capslock and add ESC
# startup script in .xinitrc
.Xmodmap

# set touchpad natural scrolling
# save in .xinitc
xinput set-prop "ELAN1401:00 04F3:30DC Touchpad" "libinput Natural Scrolling Enabled" 1

# set touchpad speed
# save in .xinitc
xinput set-prop "ELAN1401:00 04F3:30DC Touchpad" "Coordinate Transformation Matrix" 0.8 0 0 0 0.8 0 0 0 1

# disable touchscreen
xinput disable "pointer:ELAN1300:00 04F3:30BE"

# change screen brightness
sudo bash -c "echo 0 > /sys/class/backlight/amdgpu_bl0/brightness"
