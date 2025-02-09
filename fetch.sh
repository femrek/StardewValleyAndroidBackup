!#/bin/bash
mkdir archive
adb pull /sdcard/Android/data/com.chucklefish.stardewvalley/files/Saves/ && \
zip -r archive/save_`date -Iseconds`.zip Saves/

