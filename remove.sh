source $FUNCTION
  local server="r17rYI0tYD6Cp9fQN5zvaVntdMysT5erOIfuNZlrN8mt2MpudMpC3EcteQctc9pQN1mudLlt2x="
  echo ""
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
  
  adaptive_sensivity() {
    wm size reset
    wm density reset
    cmd notification post -S bigtext -t 'SENSIXPRO+' 'Tag' 'Remove Berhasil ( jika mau main lagi silahkan aktifin sensix terlebih dahulu )'
  }
  adaptive_sensivity > /dev/null 2>&1
#Original by henpeex dont rename or views is code
