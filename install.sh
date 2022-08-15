#!/system/bin/sh
# Set to true if you do *NOT* want Magisk to mount
# any files for you. Most modules would NOT want
# to set this flag to true
SKIPMOUNT=false
# Set to true if you need to load system.prop
PROPFILE=true
# Set to true if you need post-fs-data script
POSTFSDATA=false
# Set to true if you need late_start service script
LATESTARTSERVICE=true
CLEANSERVICE=true


on_install() {
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
	unzip -o "$ZIPFILE" 'addon/*' -d $TMPDIR >&2
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	ui_print "
░██████╗████████╗██████╗░██████╗░
██╔════╝╚══██╔══╝██╔══██╗██╔══██╗
╚█████╗░░░░██║░░░██████╔╝██████╔╝
░╚═══██╗░░░██║░░░██╔══██╗██╔═══╝░
██████╔╝░░░██║░░░██║░░██║██║░░░░░
╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░

███╗░░██╗███████╗░██╗░░░░░░░██╗
████╗░██║██╔════╝░██║░░██╗░░██║
██╔██╗██║█████╗░░░╚██╗████╗██╔╝
██║╚████║██╔══╝░░░░████╔═████║░
██║░╚███║███████╗░░╚██╔╝░╚██╔╝░
╚═╝░░╚══╝╚══════╝░░░╚═╝░░░╚═╝░░

░██████╗████████╗░█████╗░████████╗███████╗
██╔════╝╚══██╔══╝██╔══██╗╚══██╔══╝██╔════╝
╚█████╗░░░░██║░░░███████║░░░██║░░░█████╗░░
░╚═══██╗░░░██║░░░██╔══██║░░░██║░░░██╔══╝░░
██████╔╝░░░██║░░░██║░░██║░░░██║░░░███████╗
╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝"
ui_print "Powered By STRATOSPHERE"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
  ui_print "▌UNIVERSAL All Versions & All Soc's ▌"
  ui_print " "
  ui_print "▌VERSION ▰ 1.0"
  sleep 0.5
  ui_print "▌CODENAME ▰ STRP x NEW STATE"
  sleep 0.5
  ui_print "▌DEVICE INFORMATIONS..:"
  sleep 0.5
  ui_print "▌MODEL ▰ $(getprop ro.build.product)"
  sleep 0.5
  ui_print "▌DEVICE ▰ $(getprop ro.product.model)"
  sleep 0.5
  ui_print "▌BRAND ▰ $(getprop ro.product.system.manufacturer)"
  sleep 0.5
  ui_print "▌PROCESSOR ▰ $(getprop ro.product.board)"
  sleep 0.5
  ui_print "▌CPU ▰ $(getprop ro.hardware)"
  sleep 0.5
  ui_print "▌ANDROID VERSION ▰ $(getprop ro.build.version.release)"
  sleep 0.5
  ui_print "▌KERNEL ▰ $(uname -r)"
  sleep 0.5
  ui_print "▌RAM ▰ $(free | grep Mem |  awk '{print $2}')"
  sleep 2
  ui_print " "
  ui_print "▌Join Android Root Modules Community"
  ui_print "▌On Telegram For More!!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 2
  ui_print "▌IMPORTANT ▌"
  sleep 1
  ui_print "▌REMOVE BAG MODULE BEVORE FLASHING THIS ONE!"
  sleep 0.5
  ui_print "▌AIM ASSIST / BOOSTER ▌Bullet Register ▌Gyro Fixer Implented!"
  ui_print ""
  sleep 0.5
  ui_print "▌Exclusively Reworked For NEW STATE!"
   ui_print ""
   sleep 0.5
  ui_print "▌NEW TERMUX MENU ADDED"
  sleep 0.5
  ui_print "▌For using NEW STATE MENU"
  sleep 0.5
  ui_print "▌Type 'su -c NS' into Termux!"
  sleep 2
  ui_print ""
  ui_print "IMPORTANT MODULE INFORMATION!"
  sleep 1.5
  ui_print "╭――――――――――――――――――╮"
  ui_print "    Open Termux Menu >su -c NS<   "
  ui_print "    Option >HR< To Hide Root        "
  ui_print "    Option >UR< To UnHide Root      "
  ui_print "╰――――――――――――――――――╯"
  sleep 4
  ui_print "IF U READ AND UNDERSTAND THAT ABOVE.."
  ui_print "CHOOSE <YES> .. IF NOT THEN CHOOSE <NO>!"
  ui_print ""
  ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
ui_print "▌Prepare To Press A Volume Button! ▌"
sleep 4
 .  $TMPDIR/addon/Volume-Key-Selector/install.sh
 ui_print ""
 sleep 1
 ui_print " ▌VOLUME UP = SWITCH ▌"
ui_print ""
sleep 0.5
ui_print " ▌VOLUME DOWN = SELECT ▌"
sleep 1.5
ui_print " "
ui_print " ▌You Have Read And Understand Module INFOS Above ?! ▌"
ui_print ""
sleep 1
ui_print " [ 1 ] ▌YES I READ ALL .. Continue Installation..."
ui_print ""
ui_print " [ 2 ] ▌NO! Please Quit Installation..."
ui_print ""
ui_print ""
sleep 2
NS=1
while true; do
case $NS in
1 ) NSCHOICE="▌YES! ▌";;
2 ) NSCHOICE="▌NO! ▌";;
esac
	ui_print " ▌$NS ▌▰ $NSCHOICE"
	if $VKSEL; then
		NS=$((NS + 1))
	else 
		break
	fi
	if [ $NS -gt 2 ]; then
		NS=1
	fi
done
ui_print "Selected"
ui_print "$NSCHOICE"
ui_print ""
case $NS in
1) ui_print "▌Continue Installation..." ;;
2) exit 0 ;;
esac
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 4
ui_print " "
ui_print "╔▌Checking which ARM ur device has..."
sleep 2
ui_print "║"
ui_print "╠▌Your ARM Is ▰ $(getprop ro.product.cpu.abi)"
sleep 1
ui_print "║"
ui_print "╠▌Extracting and Moving files for ▰ $(getprop ro.product.cpu.abi)"
[[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/NS64.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/NS32.tar.xz" -C "$MODPATH"
sleep 2.5
ui_print "║"
ui_print "╚══⇒ DONE .. All Scripts Placed Successfully!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
  ui_print " "
  ui_print "▌I Am Not Responsible For Any Problems "
  ui_print "▌You Will Face From This MODULE!"
  rm -rf $MODPATH/NS64.tar.xz
rm -rf $MODPATH/NS32.tar.xz
  ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2.5
ui_print ""
  ui_print "▌Adding NEW STATE To Deny List / Magisk Hide.."
  magiskhide disable
  magiskhide add com.pubg.newstate
  magisk --denylist add com.pubg.newstate
    sleep 1.5
    ui_print "▌DONE ▌"
  sleep 2
  ui_print ""
  ui_print "▌Disabling ADB ..."
  settings put global adb_enabled 0
    sleep 1.5
    ui_print "▌DONE ▌"
  ui_print ""
  sleep 2
  ui_print "▌Disabling Developer Settings.."
  settings put global development_settings_enabled 0 
   sleep 1.5
   ui_print "▌DONE ▌"
  ui_print ""
  sleep 2
  ui_print "▌Moving & Renaming TWRP Folder if exists"
  mv /data/media/0/TWRP /data/media/0/PRWT
  sleep 1.5
  ui_print "▌DONE ▌"
  ui_print ""
  sleep 2
  ui_print "▌Moving & Renaming MAGISK Patched Boot Image if exists"
  mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img
    sleep 1.5
    ui_print "▌DONE ▌"
  ui_print ""
    sleep 2
  ui_print "▌Force Close New State Now To Add New Values.."
  am force-stop com.pubg.newstate
    sleep 1.5
    ui_print "▌DONE ▌"
  ui_print ""
  ui_print ""
  sleep 1.5
  ui_print "▌Disabling MagiskHide / Denylist for Shamiko.."
magiskhide disable >/dev/null 2>&1
magisk --denylist disable >/dev/null 2>&1
sleep 1.5
ui_print "▌DONE ▌"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
  sleep 3
  ui_print "▌Installing STRP x NEW STATE ▌"
  ui_print ""
  sleep 1.5
  ui_print "▌NEW STATE AIM ASSIST / BOOSTER ▌"
  sleep 1.5
  ui_print "▌NEW STATE BULLET REGISTER ▌"
  sleep 1.5
  ui_print "▌NEW STATE GYRO DELAY FIX ▌"
  sleep 1.5
  ui_print "▌NEW STATE TERMUX MENU ▌"
  set_perm_recursive $MODPATH 0 0 0755 0644
    set_perm $MODPATH/service.sh 0 0 0777
  ui_print " "
  sleep 2.5
  ui_print "▌Please wait for Success Message!" 
  ui_print "▌Can take few seconds!"
  pm install $MODPATH/StratosphereToast.apk
  ui_print " "
  ui_print "▌DONE ▌"
  rm -rf $TMPR
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh