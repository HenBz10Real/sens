source $FUNCTION
printer() {
text="$1"
  color="$2"
 i=0
   while [ $i -lt ${#text} ]; do
     echo -en "\e[${color}m${text:$i:1}\e[0m"
 sleep 0.03
   i=$((i + 1))
 done
echo
}
  sleep 1
  echo ""
  echo "
█▀ █▀▀ █▄░█ █▀ █ ▀▄▀   █▀█ █▀▄▀█ █░█
▄█ ██▄ █░▀█ ▄█ █ █░█   █▀▄ █░▀░█ ▀▄▀"
  echo ""
  sleep 0.8 && echo
  printer "- Version : v10 Remove ( Uninstaller )"
  sleep 0.5
  printer "- Developer : @Henpeex"
  echo 
  echo 
  sleep 1
  printer "Silahkan cek notifikasi anda apakah remove berhasil "
  echo && sleep 1
  echo 
  settings_output() {
    local dalvik=1
    settings delete global disable_window_blurs
    settings delete global accessibility_reduce_transparency
    settings delete global zram_enabled
    settings delete global wifi_power_save
    settings delete global mobile_data_always_on
    settings delete global enhanced_processing
    settings delete secure screensaver_enabled
    settings delete secure assistant
    settings delete global google_core_control
    settings delete secure adaptive_connectivity_enabled
  }
  settings_output > /dev/null 2>&1
  sleep 4
  adaptive_sensivity() {
    wm size reset
    wm density reset
    cmd notification post -S bigtext -t 'SENSIXPRO+' 'Tag' 'Remove Berhasil ( jika mau main lagi silahkan aktifin sensix terlebih dahulu )'
  }
  adaptive_sensivity > /dev/null 2>&1
#Original by henpeex dont rename or views is code
