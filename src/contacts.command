read -p 'Drag your contacts file here, or paste the filepath: ' contactvar
contactfilename=$contactvar
cat "$contactvar"  | tr -d " \n\r" | sed 's/.*TYPE=[^:]*://;s/END:V.*//' | base64 -d > $contactfilename.jpg
echo "File is saved to the same directory the contacts file came from."
echo $contactvarnew