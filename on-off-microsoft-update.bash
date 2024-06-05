#!/usr/bin/env bash

# Arg in command line to know what action to do
mode="${1}"

# suffix added or removed at the end of app's folder name
suffix=".disable"

# absolute path to the app folder
ms_update_app_path="/System/Volumes/Data/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app"

ms_update_app_disable_path="${ms_update_app_path}${suffix}"


echo "MS Updates: ${mode}"

# check value of input to enable or disable the application
case ${mode} in
  off)
    echo "Disabling MS Updates..."
    if [ -d "${ms_update_app_path}" ]
      then
        sudo mv "${ms_update_app_path}" "${ms_update_app_disable_path}"
    elif [ ! -d "${ms_update_app_disable_path}" ]
      then
        echo "[ERROR] Application folder not found: ${ms_update_app_path}"
        exit 1
    fi
    echo "MS Updates disabled"
    ;;
  on)
    echo "Enabling MS Updates..."
    if [ -d "${ms_update_app_disable_path}" ]
      then
      	sudo mv "${ms_update_app_disable_path}" "${ms_update_app_path}"
    elif [ ! -d "${ms_update_app_path}" ]
      then
        echo "[ERROR] Application folder not found: ${ms_update_app_path}"
        exit 1
    fi
    echo "MS Updates enabled"
    ;;
  *)
    echo "Unknown mode. Use 'on' or 'off'."
    exit 1
    ;;
esac

exit 0
