#!/bin/bash
ping -c 4 www.google.com > /dev/null
if [ "$?" -eq 0 ]
then
PKG_PATH=$(dirname "$(readlink -f "$0")")
cd "${PKG_PATH}"
echo "af Afrikaans
ar Arabic
az Azerbaijani
be Belarusian
bg Bulgarian
bn Bengali
ca Catalan
cs Czech
cy Welsh
da Danish
de German
el Greek
en English
eo Esperanto
es Spanish
et Estonian
eu Basque
fa Persian
fi Finnish
fr French
ga Irish
gl Galician
gu Gujarati
hi Hindi
hr Croatian
ht Haitian
hu Hungarian
hy Armenian
id Indonesian
is Icelandic
it Italian
iw Hebrew
ja Japanese
ka Georgian
km Khmer
kn Kannada
ko Korean
la Latin
lo Lao
lt Lithuanian
lv Latvian
mk Macedonian
ms Malay
mt Maltese
nl Dutch
no Norwegian
pl Polish
pt Portuguese
ro Romanian
ru Russian
sk Slovak
sl Slovenian
sq Albanian
sr Serbian
sv Swedish
sw Swahili
ta Tamil
te Telugu
th Thai
tl Filipino
tr Turkish
uk Ukrainian
ur Urdu
vi Vietnamese
yi Yiddish
zh-cn Chinese-Simplified
zh-tw Chinese-Traditional" > /tmp/lang

to_lang=$( cat /tmp/lang | zenity --list --width="250" --height="670" --text "Select the language from the list" --title "Translator" --column "Language you want translate")
	if [ "$to_lang" != "" ]
	then
echo "this will take 5 seconds"
notify-send "this will take 5 seconds"
echo "$to_lang" >  /tmp/temp3
TO=$(cat /tmp/temp3 | cut -d' ' -f1)

echo "Select an video, audio file
Select the language from the list
Actual language of movie
Translate from
to:
From
Your language for subtitles
No such file or directory
Invalid input video
Progress
Extracting audio
Audio translation
Done
You have a copy in
Internet connection required
Process to write the audio, video subtitles
Action
Percentage
Processing
Quit
Do you want continue the translation?, press: yes
or restart the process, press: no
Press
to pause the process, or press
to cancel.
Audio translated
Extracted audio
Video, audio
The file:
Already exist
Do you want overwrite?
There was an error when connecting to voice recognition servers" > /tmp/temp
cat -s < /tmp/temp > /tmp/temp1
cat /tmp/temp1 | while read line; do the_text_encoded=$(echo $line); translate=$(curl -A "Mozilla/5.0" "http://translate.google.com/translate_a/t?client=t&text=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&hl=en&sl=ese&tl=$TO&ie=UTF-8&oe=UTF-8&multires=1&prev=btn&ssel=0&tsel=0&sc=1" | sed 's/\[\[\["\([^"]*\).*/\1/'| sed 's/  / /g' | sed 's/'"'"'/ /g'| tail -n 1 ); sed -i ./Transtitulator-gtk ./Transtitulator -e s/"$the_text_encoded"/"$translate"/g ./Transtitulator-gtk ./Transtitulator;done

echo "no
yes" > /tmp/temp
cat -s < /tmp/temp > /tmp/temp1
cat /tmp/temp1 | while read line; do the_text_encoded=$(echo $line); translate=$(curl -A "Mozilla/5.0" "http://translate.google.com/translate_a/t?client=t&text=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&hl=en&sl=ese&tl=$TO&ie=UTF-8&oe=UTF-8&multires=1&prev=btn&ssel=0&tsel=0&sc=1" | sed 's/\[\[\["\([^"]*\).*/\1/'| sed 's/  / /g' | sed 's/'"'"'/ /g'| tail -n 1 ); sed -i ./Transtitulator-gtk ./Transtitulator -e s/"\"$the_text_encoded\""/"\"$translate\""/g ./Transtitulator-gtk ./Transtitulator;done


echo "Afrikaans
Arabic
Azerbaijani
Belarusian
Bulgarian
Bengali
Catalan
Czech
Welsh
Danish
German
Greek
English
Esperanto
Spanish
Estonian
Basque
Persian
Finnish
French
Irish
Galician
Gujarati
Hindi
Croatian
Haitian
Hungarian
Armenian
Indonesian
Icelandic
Italian
Hebrew
Japanese
Georgian
Khmer
Kannada
Korean
Latin
Lao
Lithuanian
Latvian
Macedonian
Malay
Maltese
Dutch
Norwegian
Polish
Portuguese
Romanian
Russian
Slovak
Slovenian
Albanian
Serbian
Swedish
Swahili
Tamil
Telugu
Thai
Filipino
Turkish
Ukrainian
Urdu
Vietnamese
Yiddish" > /tmp/temp
cat -s < /tmp/temp > /tmp/temp1
cat /tmp/temp1 | while read line; do the_text_encoded=$(echo $line); translate=$(curl -A "Mozilla/5.0" "http://translate.google.com/translate_a/t?client=t&text=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&hl=en&sl=ese&tl=$TO&ie=UTF-8&oe=UTF-8&multires=1&prev=btn&ssel=0&tsel=0&sc=1" | sed 's/\[\[\["\([^"]*\).*/\1/'| sed 's/  / /g' | sed 's/'"'"'/ /g'| tail -n 1 ); sed -i ./Transtitulator-gtk ./Transtitulator ./README.md -e s/"$the_text_encoded"/"$translate"/g ./Transtitulator-gtk ./Transtitulator ./README.md;done

echo "Auto-detect
Chinese-Simplified
Chinese-Traditional" > /tmp/temp
cat -s < /tmp/temp > /tmp/temp1
cat /tmp/temp1 | while read line; do the_text=$(echo $line) the_text_encoded=$(echo $line | tr '-' ' ' ); translate=$(curl -A "Mozilla/5.0" "http://translate.google.com/translate_a/t?client=t&text=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&hl=en&sl=ese&tl=$TO&ie=UTF-8&oe=UTF-8&multires=1&prev=btn&ssel=0&tsel=0&sc=1" | sed 's/\[\[\["\([^"]*\).*/\1/'| sed 's/  / /g' | sed 's/'"'"'/ /g'| sed 's/ /-/g' | tail -n 1 ); sed -i ./Transtitulator-gtk ./Transtitulator ./README.md -e s/"$the_text"/"$translate"/g ./Transtitulator-gtk ./Transtitulator ./README.md ;done

rm /tmp/lang
rm /tmp/temp
rm /tmp/temp1
echo "Done!"
notify-send "Done!"
exit
else
exit 1
fi
fi
	if [ $? -eq 0 ]; then
notify-send "Internet connection required"
	exit 0
fi
