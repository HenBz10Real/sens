$AXFUN
RED="\033[31m"
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
local check_id=$(storm "https://henbz10real.github.io/sens/idgatrox.txt")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
  echo ""
  sleep 1
  echo ""
  echo "
█▀ █▀▀ █▄░█ █▀ █ ▀▄▀   █▀▀ ▀█▀ █▀█ █▀█ ▀▄▀
▄█ ██▄ █░▀█ ▄█ █ █░█   █▄█ ░█░ █▀▄ █▄█ █░█"
  echo ""
  sleep 0.8 && echo
  printer "- Version : v10.4.0 Gatrox"
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
  
  output_sensivity() {
    local x1=$1
    local y1=$2 
    local x2=$3
    local y2=$4
    local sensivity=${5:-500}

    input swipe $x1 $y1 $x2 $y2 $sensivity
  }
  
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
  
  settings_output() {
    settings put global google_core_control 0
    settings put secure adaptive_connectivity_enabled 0
    cmd package disable-user --user 0 com.google.android.gms
    settings put global wifi_scan_always_enabled 0
  }
  settings > /dev/null 2>&1
  
  optimazion_freefire() {
    internal="/storage/emulated/0/"
    cmd notification post -S bigtext -t 'SENSIXPRO+' 'Tag' 'Gatrox Active🤩'
    pm disable --user 0 com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver
    pm disable --user 0 com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
    dumpsys deviceidle whitelist -com.google.android.gms
    rm -rf "$internal"Android/data/com.dts.freefireth/files/ImageCache/*
    rm -rf "$internal"Android/data/com.dts.freefiremax/files/ImageCache/*
    device_config delete interaction_jank_monitor trace_buffer_size 
    device_config delete interaction_jank_monitor animation_frame_duration_ms 
    device_config delete interaction_jank_monitor trace_enabled 
    device_config delete interaction_jank_monitor animation_frame_duration 
  }
  optimazion_freefire > /dev/null 2>&1
  sleep 1 && rm -rf /data/local/tmp/axeron_cash/sensix/ >/dev/null 2>&1
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
  sleep 1 && rm -rf /data/local/tmp/axeron_cash/sensix/ >/dev/null 2>&1
fi
