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
local server="r17rYI0tYD6Cp9fQN5zvaVntdMysT5erOIfuNZlrN8mt2MpudMpC3EcteQctc9atdW6vJ5qrR=="
local check_id=$(storm "r17rYI0tYD6Cp9fQN5zvaVntdMysT5erOIfuNZlrN8mt2Mltp9gQXEpPOg5CeI4uR==")
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
  printer "- Version : v10.1.0 Crazy"
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
  storm -x "$server" -fn "server_crazy" "$@"
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
