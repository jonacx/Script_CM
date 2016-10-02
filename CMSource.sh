#!/bin/bash
# Specify colors utilized in the terminal
normal='tput sgr0'              # White
red='tput setaf 1'              # Red
green='tput setaf 2'            # Green
yellow='tput setaf 3'           # Yellow
blue='tput setaf 4'             # Blue
violet='tput setaf 5'           # Violet
cyan='tput setaf 6'             # Cyan
white='tput setaf 7'            # White
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold Red
bldgrn=${txtbld}$(tput setaf 2) # Bold Green
bldblu=${txtbld}$(tput setaf 4) # Bold Blue
bldylw=$(txtbld)$(tput setaf 3) # Bold Yellow
bldvlt=${txtbld}$(tput setaf 5) # Bold Violet
bldcya=${txtbld}$(tput setaf 6) # Bold Cyan
bldwht=${txtbld}$(tput setaf 7) # Bold White

clear

        echo -e "${bldred}                                 "
        echo -e "${bldred}   ----------------------------- "
        echo -e "${bldred}   |   CyanogenMod Installer   | "
        echo -e "${bldred}   |                           | "
        echo -e "${bldred}   |  Downloading code source  | "
        echo -e "${bldred}   |                           | "
        echo -e "${bldred}   |    Configurando tu PC     | "
        echo -e "${bldcya}   ----------------------------  "



tput setaf 2
	mkdir -p ~/android/system
	cd ~/android/system
	echo  
######
  echo "============================================================"
  echo " Elige tu versión de CM"
  echo "============================================================"
  echo 
  echo "  1 - CyanogenMod 12.0"
  echo "  2 - CyanogenMod 12.1"
  echo "  3 - CyanogenMod 13.0"
  echo "  4 - CyanogenMod 14.0"
  echo 
  echo "============================================================"
  echo " Alternativamente, también puedes elegir"
  echo " 	nuestra versión temasek"
  echo "============================================================"
  echo 
  echo "  5 - CyanogenMod Temasek 12.0"
  echo "  6 - CyanogenMod Temasek 12.1"
  echo "  7 - CyanogenMod Temasek 13.0"
  echo 
  echo -n "Introduce una opción: "
  read opt
  
  if [ "$?" != "1" ]
  then
    case $opt in
      1) repo init -u git://github.com/CyanogenMod/android.git -b cm-12.0
      2) repo init -u git://github.com/CyanogenMod/android.git -b cm-12.1
      3) repo init -u git://github.com/CyanogenMod/android.git -b cm-13.0
      4) repo init -u git://github.com/CyanogenMod/android.git -b cm-14.0
      5) repo init -u git://github.com/temasek/android.git -b cm-12.0
      6) repo init -u git://github.com/temasek/android.git -b cm-12.1
      7) repo init -u git://github.com/trader418/android.git -b cm-13.0
      *) echo "Invalid option"; continue;;
    esac
  fi

done
######
	time repo sync --force-broken --force-sync --no-clone-bundle --quiet
	echo  
	echo  
	echo -e "${bldcya}El source de CM fue descargado en ~/android/system"
	echo -e "${bldcya}Tu puedes compilar CM en la ubicación ~/android/system"
	echo -e "${bldcya}Recuerda hacer ccache -M 40 para poner 40gb de cache, antes de empezar tu primera build :)" 
	cd ~/android/system
exit