#tester
echo "Welcome to Nadekobot"
echo "This is the pi installer"
echo "This installer will only work on Ubuntu"
root=$(pwd)
echo ""
choice=9

base_url="https://gitlab.com/Kwoth/nadeko-bash-installer/-/raw/master"

script_menu="n-menu.sh"
script_prerequisites="n-prerequisites.sh"
script_install="n-install.sh"
script_run="n-run.sh"
script_arn="n-arn.sh"

while [ $choice -eq 9]; do
      	echo "1. Install Prerequisites"
      	echo "2. Download NadekoBot"
      	echo "3. Run NadekoBot"
	echo "4. Run NadekoBot with Auto Restart"
      	echo "5. Set up credentials.json (If NadekoBot is downloaded)"
      	echo "6. Exit"
      	echo -n "Type in a number matching the option and press ENTER"
      	echo ""
      	read choice
      

	if [ $choice -eq 1 ]; then
      		echo ""
		echo "Downloading the prerequisites installer script"
		wget -N "$base_url/$script_prerequisites" && bash "$root/$script_prerequisites"
		echo ""
		choice=9
	elif [ $choice -eq 2 ]; then
                echo ""
		echo "Downloading the NadekoBot installer script"
		wget -N "$base_url/$script_install" && bash "$root/$script_install"
		echo ""
		sleep 2s
		choice=9
	elif [ $choice -eq 3 ]; then
                echo ""
		echo "Downloading the NadekoBot run script"
		wget -N "$base_url/$script_run" && bash "$root/$script_run"
		echo ""
		sleep 2s
		bash "$root/linuxAIO.sh"
	elif [ $choice -eq 4 ]; then
              	echo ""
		echo "Downloading the NadekoBot run and auto restart script"
		wget -N "$base_url/$script_arn" && bash "$root/$script_arn"
		echo ""
		sleep 2s
		bash "$root/linuxAIO.sh"
	elif [ $choice -eq 5 ]; then
		echo ""
		echo
		echo -e "Let's begin creating a new credentials.json file if you are about to run the NadekoBot for the first time. \n \nPlease read JSON Explanations in the guide... \n \nPress [Y] when you are ready to continue or [N] to exit."
		while true; do
    			read -p "[y/n]: " yn
    			case $yn in
        		[Yy]* ) clear; break;;
        		[Nn]* ) echo Exiting...; exit;;
        		* ) echo "Couldn't get that please type [y] for Yes or [n] for No.";;
    			esac
		done
		clear
		cd "$root/NadekoBot/src/NadekoBot"
		mv credentials.json credentials.json.old

		echo Please enter your bot client ID:
		echo ""
		read clientid
		echo ""
		echo Alright saved \'$clientid\' as your client ID.
		echo ""
		echo "----------"
		echo ""

		echo Please enter your bot token \(It is not bot secret, it should be ~59 characters long.\):
		echo ""
		read token
echo ""
echo Alright saved \'$token\' as your bot\'s token.
echo ""
echo "----------"
echo ""

echo Please enter your own ID \(Refer to the guide, it will be bot\'s owner ID.\):
echo ""
read ownerid
echo ""
echo Alright saved \'$ownerid\' as owner\'s ID.
echo ""
echo "----------"
echo ""

echo Please enter Google API key \(Refer to the guide.\):
echo ""
read googleapi
echo ""
echo Alright saved \'$googleapi\' as your bot\'s Google API Key.
echo ""
echo "----------"
echo ""

echo -e "Please enter Mashape Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read mashapekey
echo ""
echo Alright saved \'$mashapekey\' as your bot\'s Mashape Key.
echo ""
echo "----------"
echo ""

echo -e "Please enter OSU API Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read osu
echo ""
echo Alright saved \'$osu\' as your bot\'s OSU API Key.
echo ""
echo "----------"
echo ""

echo -e "Please enter Cleverbot API Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read cleverbot
echo ""
echo Alright saved \'$cleverbot\' as your bot\'s Cleverbot API Key.
echo ""
echo "----------"
echo ""

echo -e "Please enter Twitch Client ID or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read twitchcid
echo ""
echo Alright saved \'$twitchcid\' as your bot\'s Twitch Client ID.
echo ""
echo "----------"
echo ""

echo -e "Please enter Location IQ Api Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read locationiqapi
echo ""
echo Alright saved \'$locationiqapi\' as your bot\'s Location IQ API Key.
echo ""
echo "----------"
echo ""

echo -e "Please enter Timezone DB Api Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read timedbapi
echo ""
echo Alright saved \'$timedbapi\' as your bot\'s Timezone DB API Key.
echo ""
echo "----------"
echo ""

echo "{
  \"ClientId\": $clientid,
  \"Token\": \"$token\",
  \"OwnerIds\": [
    $ownerid
  ],
  \"GoogleApiKey\": \"$googleapi\",
  \"MashapeKey\": \"$mashapekey\",
  \"OsuApiKey\": \"$osu\",
  \"CleverbotApiKey\": \"$cleverbot\",
  \"TwitchClientId\": \"$twitchcid\",
  \"LocationIqApiKey\": \"$locationiqapi\",
  \"TimezoneDbApiKey\": \"$timedbapi\",
  \"Db\": null,
  \"TotalShards\": 1
}" | cat - >> credentials.json
echo Credentials setup completed.
sleep 5
clear
cd "$root"
bash "$root/linuxAIO.sh"
					else
						if [ $choice -eq 6 ] ; then
						echo ""
						echo "Nothing to see here"
                        			sleep 2s
                        			bash "$root/linuxAIO.sh"
						else
							if [ $choice -eq 7 ] ; then
							echo ""
							echo "Nothing to see here"
                        				sleep 2s
                        				bash "$root/linuxAIO.sh
							else
								if [ $choice -eq 8 ] ; then
									echo ""
									echo "Exiting..."
									cd "$root"
									exit 0
								else
									clear
									echo "1. Download NadekoBot"
									echo "2. Run Nadeko (Normally)"
									echo "3. N/A"
									echo "4. Auto-Install Prerequisites (For Ubuntu, Debian and CentOS)"
									echo "5. Set up credentials.json (If you have downloaded NadekoBot already)"
									echo "6. N/A"
									echo "7. N/A"
									echo "8. Exit"
									echo -n "Choose [1] to Download, [2 or 3] to Run, [6 and 7] for pm2 setup/startup (see README) or [8] to Exit."
									choice=9
								fi
							fi	
						fi 
					fi
				fi
			fi
		fi
	fi
done

cd "$root"
exit 0
