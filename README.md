# Stardew Valley Android Save Backup Tool

A collection of Bash scripts to manage (load and backup) Stardew Valley save files on an Android device.

## Features

- `load.sh`: Pushes a save folder to the Android device.
- `fetch.sh`: Fetches and compresses all saves from the Android device.

## Prerequisites

- **GNU/Linux or macOS computer**  
  - `adb` must be installed. [See installation guide](#how-to-install-adb-on-a-computer)  
  - `zip` must be installed.  
- **Android Device**  
  - Stardew Valley must be installed.  
  - Stardew Valley must be launched at least once.  
- **USB cable** to connect the computer and the phone/tablet.

## Usage

### Preparing Your Devices

1. Enable **USB Debugging** on your Android device. [See how](#how-to-enable-usb-debugging-on-android).
2. Connect your Android device to the computer via USB.
3. Open a terminal and run `adb devices` to verify the connection.

### Push a Save Folder

1. Open a terminal and navigate to the root folder of this repository.
2. Run:  
   ```sh
   ./load.sh /path/to/your/save/folder
   ```
3. Open Stardew Valley on your Android device, and the save will appear in the game.

### Backup Saves from the Android Device

1. Open a terminal and navigate to the root folder of this repository.
2. Run:  
   ```sh
   ./fetch.sh
   ```
3. All saves will be compressed into a ZIP file inside the `archive` folder.
4. The latest save files will be available under the `Saves` folder. **(These files are overwritten on each fetch.)**

## How to Install `adb` on a Computer

- **GNU/Linux**
  - **Fedora**:  
    ```sh
    sudo dnf install android-tools
    ```
  - **Ubuntu**:  
    ```sh
    sudo apt-get install android-tools-adb
    ```
- **macOS**: [See this guide](https://stackoverflow.com/a/32314718/13136991)

## How to Enable USB Debugging on Android

1. Open **Settings** > **About Device** > **Software Information**.
2. Tap **Build Number** multiple times until you see a success message.
3. Go to **Settings** > **Developer Options** > **USB Debugging** and enable it.

## License

```
MIT License

Copyright (c) 2025 Faruk Emre

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Disclaimer

Modifying Stardew Valley save files may lead to unintended game behavior. Use this tool at your own risk.
