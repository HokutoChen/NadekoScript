#tester
root=$(pwd)
clear
echo -e "Let's begin creating a new credentials.json file if you are about to run the NadekoBot for the first time. \n \nPlease read JSON Explanations in the guide... \n \nPress [Y] when you are ready to continue or [N] to exit."

while true; do
  read -p "[y/n]: " yn
  case $yn in
    [Yy]* ) clear; break;;
    [Nn]* ) echo Exiting...; exit;;
    * ) echo "Couldn't get that please type [y] for Yes or [n] for No.";;
  esac
done

cd $root/nadekobot/src/NadekoBot

mv credentials.json credentials.json.old

echo "Please enter your bot token (It is not bot secret, it should be ~59 characters long.):"
echo ""
read token
echo ""
echo -e "Saved $token as your bot token."
echo ""
echo "----------"
echo ""

echo Please enter your own ID \(Refer to the guide, it will be bot\'s owner ID.\):
echo ""
read ownerid
echo ""
echo -e "Saved $ownerid as owner ID."
echo ""
echo "----------"
echo ""

echo "Please enter Google API key (Refer to the guide.):"
echo ""
read googleapi
echo ""
echo "Saved $googleapi as your bot Google API Key."
echo ""
echo "----------"
echo ""

echo -e "Please enter Mashape Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read mashapekey
echo ""
echo -e "Saved $mashapekey as your bot Mashape Key."
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
echo -e "Saved $twitchcid as your bot Twitch Client ID.
echo ""
echo "----------"
echo ""

echo -e "Please enter Location IQ Api Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read locationiqapi
echo ""
echo -e "Saved $locationiqapi as your bot Location IQ API Key.
echo ""
echo "----------"
echo ""

echo -e "Please enter Timezone DB Api Key or Just Press [Enter Key] to skip. (optional) \nRefer to the JSON Explanations guide:"
echo ""
read timedbapi
echo ""
echo -e "Saved $timedbapi as your bot Timezone DB API Key."
echo ""
echo "----------"
echo ""

echo -e"{
  \nClientId: $clientid,
  \nToken: $token,
  \nOwnerIds: [
    $ownerid
  ],
  \nGoogleApiKey: $googleapi,
  \nMashapeKey: $mashapekey,
  \nOsuApiKey: $osu,
  \nCleverbotApiKe: $cleverbot,
  \nTwitchClientI: $twitchcid,
  \nLocationIqApiKe: $locationiqapi,
  \nTimezoneDbApiKey: $timedbapi,
  \nDb: null,
  \nTotalShards: 1
}" | cat - >> credentials.json
echo "Credentials setup completed."
sleep 5
clear
cd 
rm $root/n-credentials_setup.sh
exit 0
