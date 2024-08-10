$AXFUN
RED="\033[31m"
zomx() {
    "$@" > /dev/null 2>&1
}
printer() {
text="$1"
  color="$2"
 i=0
   while [ $i -lt ${#text} ]; do
     echo -en "\e[${color}m${text:$i:1}\e[0m"
 sleep 0.02
   i=$((i + 1))
 done
echo
}
local check_id=$(storm "https://henbz10real.github.io/sens/idcrazy.txt")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
  echo ""
  sleep 1
  echo ""
  echo "
█▀ █▀▀ █▄░█ █▀ █ ▀▄▀   █▀▀ █▀█ ▄▀█ ▀█ █▄█
▄█ ██▄ █░▀█ ▄█ █ █░█   █▄▄ █▀▄ █▀█ █▄ ░█░"
  echo ""
  sleep 0.8 && echo
  printer "- Version : v10.2.1 Crazy"
  sleep 0.5
  printer "- Developer : @Henpeex"
  sleep 0.1
  echo
  echo 
  sleep 0.6
  echo
  echo "Silahkan cek notifikasi anda, ${RED}berhasil terpasang"
  sleep 0.6
  echo 
  echo 
   sensivity_calibrar() {
    local coordinate=$1
    local sensivity_value=$2
    if [[ $coordinate -lt 0 ]]; then
      coordinate=0
    elif [[ $coordinate -gt $sensivity_value ]]; then
      coordinate=$sensivity_value
    fi
    echo $coordinate
  }
  sleep 0.3
  output_sensivity() {
    local x1=$1
    local y1=$2 
    local x2=$3
    local y2=$4
    local sensivity=${5:-500}

    input swipe $x1 $y1 $x2 $y2 $sensivity
  }
  sleep 0.2
  users_running() {
    local sensivity_value=500

    local output_server=$(sensivity_calibrar $((RANDOM%max_value)) $sensivity_value)
    local tracking=$(sensivity_calibrar $((RANDOM%max_value)) $sensivity_value)
    
    output_sensivity $output_server 0 $output_server $sensivity_value
    output_sensivity $output_server $sensivity_value $output_server 0
    output_sensivity 0 $tracking $sensivity_value $tracking
    output_sensivity $sensivity_value $tracking 0 $tracking
  }
  users_running 0 > /dev/null 2>&1
  sleep 0.1
  settings_output() {
    local dalvik=0
    settings put global disable_window_blurs 1
    settings put global accessibility_reduce_transparency 1
    settings put global zram_enabled 0
    settings put global wifi_power_save 0
    settings put global mobile_data_always_on 0
    settings put global enhanced_processing 0
    settings put secure screensaver_enabled 0
    settings put secure assistant 0
    settings put global google_core_control 0
    settings put secure adaptive_connectivity_enabled 0
    setprop debug.hwui.disable_vsync true
    setprop debug.hwui.enable_bp_cache false
    setprop debug.egl.buffcount 4
  }
  settings > /dev/null 2>&1
  sleep 0.2
  optimazion_freefire() {
    internal="/storage/emulated/0/"
    cmd notification post -S bigtext -t 'SENSIXPRO+' 'Tag' 'Crazy Active🤩'
    pm disable --user 0 com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver
    pm disable --user 0 com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
    dumpsys deviceidle whitelist -com.google.android.gms
    find "$internal" -iname "*dalvik" -exec rm -rf {} \;
    find "$internal" -iname "*log" -exec rm -rf {} \;
    find "$internal" -iname "*dat" -exec rm -rf {} \;
    rm -rf "$internal"Android/data/com.dts.freefireth/files/ImageCache/*
    rm -rf "$internal"Android/data/com.dts.freefiremax/files/ImageCache/*
    device_config delete interaction_jank_monitor trace_buffer_size 
    device_config delete interaction_jank_monitor animation_frame_duration_ms 
    device_config delete interaction_jank_monitor trace_enabled 
    device_config delete interaction_jank_monitor animation_frame_duration 
    am kill-all
  }
  optimazion_freefire > /dev/null 2>&1
  sleep 2
  sleep 2 && rm -rf /data/local/tmp/axeron_cash/sensix/response>/dev/null 2>&1
else
  local link="https://linktr.ee/henvxofficial"
  echo ""
  sleep 0.6
  echo
  echo "Invalid device, ${RED}file rusak ( buy to original script )"
  sleep 0.6
  sleep 3
  echo
  echo
  am start -a android.intent.action.VIEW -d ${link} > /dev/null 2>&1
fi
