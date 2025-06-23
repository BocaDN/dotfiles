#!/bin/bash
BATTLE_NET_PATH="/mnt/SharedStorage/Blizzard/Battle.net/Battle.net Launcher.exe"
PROTON="$HOME/.steam/steam/steamapps/common/Proton - GE/GE-Proton9-27/proton"

"$PROTON" run "$BATTLE_NET_PATH" &
