source $FUNCTION
RED="\033[31m"
local check_id=$(storm "r17rYI0tYD6Cp9erOIfuNZlP29kC0ycsbA6DKSJQNWjC3EcseDmrNI1tYQmvT50vYH=")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
  echo ""
  sleep 1
  echo ""
  echo "
█▀ █▀▀ █▄░█ █▀ █ ▀▄▀   █░█ █▀█ █░█ █▀█ ▀▄▀
▄█ ██▄ █░▀█ ▄█ █ █░█   █▄█ █▀▀ ▀▄▀ █▄█ █░█"
  echo ""
  sleep 0.8 && echo
  printer "- Version : v10 Upvox"
  sleep 0.5
  printer "- Developer : @Henpeex"
  sleep 0.1
  echo
  echo 
  sleep 0.6
  echo
  printer "Silahkan cek notifikasi anda, ${RED}berhasil terpasang"
  sleep 0.6
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
    cmd package disable-user --user 0 com.google.android.gms
    settings put global device_idle_constants inactive_to=2592000000,motion_inactive_to=2592000000,light_after_inactive_to=0,light_pre_idle_to=30000,light_max_idle_to=86400000,light_idle_to=43200000,light_idle_maintenance_max_budget=30000,light_idle_maintenance_min_budget=10000,min_time_to_alarm=60000,min_light_maintenance_time=10000,wait_for_unlock=0,quick_doze_delay_to=86400000
    settings put global zen_mode 0
    settings put global activity_manager_constants max_cached_processes=12800,background_settle_time=0,fgservice_min_shown_time=0,fgservice_min_report_time=0,fgservice_screen_on_before_time=0,fgservice_screen_on_after_time=0,content_provider_retain_time=0,gc_timeout=0,gc_min_interval=0,full_pss_min_interval=0,full_pss_lowered_interval=0,power_check_interval=0,power_check_max_cpu_1=0,power_check_max_cpu_2=0,power_check_max_cpu_3=0,power_check_max_cpu_4=0,service_usage_interaction_time=0,usage_stats_interaction_interval=0,service_restart_duration=0,service_reset_run_duration=0,service_restart_duration_factor=0,service_min_restart_time_between=0,service_max_inactivity=0,service_bg_start_timeout=0,CUR_MAX_CACHED_PROCESSES=0,CUR_MAX_EMPTY_PROCESSES=0,CUR_TRIM_EMPTY_PROCESSES=0,CUR_TRIM_CACHED_PROCESSES=0
    settings put global job_scheduler_constants fg_job_count=2,bg_normal_job_count=1,bg_moderate_job_count=1
    settings put global job_scheduler_quota_controller_constants max_job_count_per_rate_limiting_window=5,rate_limiting_window_ms=5000,max_job_count_active=75,max_session_count_active=50
    settings put global wifi_scan_always_enabled 0
  }
  settings > /dev/null 2>&1
  
  optimazion_freefire() {
    internal="/storage/emulated/0/"
    cmd notification post -S bigtext -t 'SENSIXPRO+' 'Tag' 'Upvox Active🤩'
    pm disable --user 0 com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver
    pm disable --user 0 com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
    dumpsys deviceidle whitelist -com.google.android.gms
    find "$internal" -iname "*dalvik" -exec rm -rf {} \;
    find "$internal" -iname "*log" -exec rm -rf {} \;
    find "$internal" -iname "*dat" -exec rm -rf {} \;
    rm -rf "$internal"Android/data/com.dts.freefireth/files/ImageCache/*
    rm -rf "$internal"Android/data/com.dts.freefiremax/files/ImageCache/*
  }
  optimazion_freefire > /dev/null 2>&1
  
  adaptive_sensivity() {
    wm size 1440x3200
  }
  adaptive_sensivity > /dev/null 2>&1
  
  touch_opt() {
    property=(
      distance.scale=0.000000000000000000000000001
      pressure.scale=0.000000000000000000000000001
      size.scale=0.000000000000000000000000001
    )
    for prop in ${property[@]}; do
      a=${prop%=*}
      b=${prop#*=}
      setprop debug.touch.$a $b
      setprop log.tag.touch.$a $b
      settings put global touch.$a $b
      settings put secure touch.$a $b
      settings put system touch.$a $b
      device_config put touch $a $b
    done
  }
else
  local link="https://linktr.ee/henvxofficial"
  echo ""
  sleep 0.6
  echo
  printer "Invalid device, ${RED} file rusak ( buy to original script )"
  sleep 0.6
  sleep 2
  am start -a android.intent.action.VIEW -d ${link} > /dev/null 2>&1
fi