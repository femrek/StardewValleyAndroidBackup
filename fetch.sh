!#/bin/bash
adb pull /sdcard/Android/data/com.chucklefish.stardewvalley/files/Saves/
mkdir archive
zip -r archive/save_`date -Iseconds`.zip Saves/

