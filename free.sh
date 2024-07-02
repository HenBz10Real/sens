source $FUNCTION
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
  echo ""
  sleep 1
  echo ""
  echo "
█▀ █▀▀ █▄░█ █▀ █ ▀▄▀   █▀▀ █▀█ █▀▀ █▀▀
▄█ ██▄ █░▀█ ▄█ █ █░█   █▀░ █▀▄ ██▄ ██▄"
  echo ""
  sleep 0.8 && echo
  printer "- Version : v10 Free Version"
  sleep 0.5
  printer "- Developer : @Henpeex"
  sleep 0.1
  echo
  echo 
  sleep 1
  echo
  echo "Silahkan cek notifikasi anda, ${RED}berhasil terpasang"
  sleep 0.4
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
  }
  settings > /dev/null 2>&1
  sleep 0.2
  optimazion_freefire() {
    internal="/storage/emulated/0/"
    cmd notification post -S bigtext -t 'SENSIXPRO+' 'Tag' 'Sensix free berhasil terpasang😈'
    pm disable --user 0 com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver
    pm disable --user 0 com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
    dumpsys deviceidle whitelist -com.google.android.gms
    rm -rf "$internal"Android/data/com.dts.freefireth/files/ImageCache/*
    rm -rf "$internal"Android/data/com.dts.freefiremax/files/ImageCache/*
    settings put system font_scale 1
  }
  optimazion_freefire > /dev/null 2>&1
  sleep 1
  adaptive_sensivity() {
    wm size 1152x2624
  }
  adaptive_sensivity > /dev/null 2>&1
  local sc="https://linktr.ee/henvxofficial"
 sleep 4
am start -a android.intent.action.VIEW -d ${sc} > /dev/null 2>&1
