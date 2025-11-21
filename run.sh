cat urls.txt downloads archives

#affiché la date sur le format demandé
echo "Script starting at : " $(date +"%Y-%m-%d T: %H:%M:S.%3N%z")

#affiché le chemin absolu
echo "Script full path: '$(realpath "$0")'"

#affiché les droits j'utilise
ls -l run.sh

#J'utilise cette commande pour ajouter tous les droits
chmod +x "run.sh"

#créer une directory temporaire
#définir une variable
TMP_DIR="./.tmp_file"
mkdir -p "$TMP_DIR"; echo "La directory temporaire est créée sur : '$TMP_DIR'"La directory temporaire est créée sur : './.tmp_file'

#The "URL" is displayed in blue and underlined in the terminal
while read url; do echo -e "> Downloading '\033[4;34m${url}\033[0m'…"; done < urls.txt

#Each JSON file is stored in the temporary directory keeping the original file name 
mkdir -p "$TMP_DIR" && while read -r url; do echo -e "Downloading '\033[4;34m$url\033[0m'…"; curl -L -f --insecure -o "$TMP_DIR/$(basename "$url")"; done < urls.txt

#ach HTTP response headers (for each downloaded file) is stored in the temporary directory
mkdir -p "$TMP_DIR" && while read -r url; do echo -e "Downloading '\033[4;34m$url\033[0m'…"; curl -L -f --insecure -o "$TMP_DIR/$(basename "$url")" "$url"; echo -e "\033[0;32mDone\033[0m"; done < urls.txt

echo "bye!"
