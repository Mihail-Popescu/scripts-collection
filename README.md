## Overview
This repository contains a collection of `.ahk` (AutoHotkey), `.bat` (Batch) and Python scripts I created for personal use. It serves as a backup for my scripts, but I made it public in case others might find them helpful.

The scripts are divided into four sections:

- **PC Automation:** Scripts I made for my PC or laptop to fix issues or automate tasks.
- **Site Automation:** Scripts that automate tasks on websites.
- **Game Automation:** Scripts that automate tasks in games.
- **Misc Scripts:** Random scripts that don’t fit into the other categories.

## General Requirements
To use the scripts in this repository, you’ll need:
- **AutoHotkey** for `.ahk` files.
- **Windows** for `.bat` files.
- **Python** for `.py` files.

## Scripts Overview
Below is a list of scripts in this repository, along with a description of what each one does or why I made it.

### PC Automation
- **Backup_All.bat:** This script uses the `robocopy` command to instantly back up a selected folder. It’s particularly useful if you already have `robocopy` set up to back up a folder from one SSD to another SSD whenever you shut down your PC, but you want to ensure that some important files are backed up immediately.

- **CloseStuff.bat:** This script closes apps and services that you generally want to start at startup but occasionally need to close for extra performance. For example an app like Plex (can also run as service).

- **Gaming_Mode.bat:** Useful for laptops. Changes refresh rate, max processor state and more settings to help with cooling during gaming. (Especially if you have a processor that can't be undervolted.)
- **Normal_Mode.bat:** As stated before, useful to switch quickly between two states that require multiple settings. One for gaming and another for daily use.
  
- **Power_Options.bat:** Quickly opens up the power options settings so that you can change the values for "Maximum processor frequency" and "Maximum processor frequency for Processor Power Efficiency Class 1" (Those settings are hidden by default, you need to enable them). Capping your CPU clock speed helps with cooling the CPU in gaming laptops. Also the value you set can reflect a smaller real clock speed. In my case if I set 3100 MHz, in reality my CPU clock speed will be capped at 2600 Mhz, so minus 500 MHz for any value I set.
 
- **TwoScreens_Monitor_Fix.bat:** A bug with the intel CPUs would make my monitors lag whenever I used two monitors. This bat file would disable and enable a intel graphics device to fix the lag every time I used two monitors.

- **Monitor.py:** My old monitor has HDMI(max 60Hz) and DVI(max 144hz) ports. My laptop has only a HDMI port and I wanted more Hz. I bought a HDMI to DVI adapter (by the way, any HDMI to DVI or DVI to HDMI adapter is bidirectional, even if it is not mentioned by the manufacturer). The issue was that whenever I went over 60Hz on the adapter, to 120hz for example, I would get a built in warning from my monitor to use the cable that came with the monitor. No way to remove the warning. So I made a script that spams the monitor with VCP (Virtual Control Panel) codes which made it dissapear completely. (Sending a code once would make it dissapear for less than a second, so had to spam it)

### Site Automation
- **Download_Random_Pictures.cmd:** This was a fun little script I wrote when I found out that the site https://prnt.sc/ stored user-uploaded images in URLs formed with `sc` followed by an ascending number (e.g., `sc0`, `sc1`, `sc2`, etc.). It automated the process of downloading thousands of random pictures.
  
- **MicrosoftRewards.ahk:** Microsoft has a program where you can gain points by doing daily tasks (do a number of searches on bing). The points can be converted into money vouchers. This autohotkey script automates that process.
  
- **Tazz_Voucher_Generator.ahk:** This is also a little fun script. Tazz, a Romanian food delivery app, once sent most of their users a voucher in the format `"GeniusBF24_XXXXXX"`, where `XXXXXX` was a combination of random numbers and letters. Their website didn’t check how many times you tried a voucher, so I wrote this script to go through the millions of possibilities to guess a valid voucher. (I ended up not using it long enough to find a voucher because I didn’t have the patience.)

### Game Automation
- **AutoClick.ahk:** An auto clicker that can be used in different games.
- **CombatWarriors_SuperJump.ahk:** Attempted to make a script for the super jump that requires multiple key presses and mouse movements.
- **EatTheWorld_AutoEat.ahk:** Helps you automatically eat.
- **Fortnite_AFK.ahk:** Made this script to afk in lego fortnite to gain experience for the battle pass.
