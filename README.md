# GNU License. You are free to modify and redistribute   # 
# http://gnome-look.org/content/show.php?content=163878  #

Transtitulator, translate audio, videos, and automatically write an susbtitles file, .srt, do this with google speech recognition, and google-translate

Usage: Transtitulator , "/path-to-video/" "language-from" "language-to"
Or browse to your video, and select the lenguages

Transtitulator-gtk have a zenity progress bar. Caution this script depends of been with Transtitulator, in the same folder, if you rename the script, must modify the command line.

In "language-from", its also available "auto" case you dont know the language of the audio. The languages available are down below.

Press (Ctrl+Z), to pause the process, or press (Ctrl+C) to cancel.
When is paused you can resume the translations, from where stay

You can process multiple files simultaneously

You can change the language interface by execute: /install-translation.sh

To use in nautilus-script. Replace VIDEO="$1", by : VIDEO="$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS", and replace $VIDEO by $@, in Transtitulator-gtk. And copy to $HOME/.gnome2/nautilus-scripts , or  $HOME/.local/share/nautilus/scripts

The split audio, time duration, are define in: CHUNK_LEN="4"; to 4 seconds, you can modify, for a better use.

Install dependencies:
sudo apt-get install ffmpeg curl mplayer gawk zenity

Possible fails: 1, The function when process the audio, it's cut in 8 seconds fragments, and this probably cut some words. 2, Is better to google voice recongition, use clean audio, without music, or other voices, and how ever, can give errors on the convertion, also google translate, but is real that google have got fast evolu in the sources.

I'm sure it's can be made better, but is a start, I hope be help in something.
Enjoy, greetings!

# Written by Rodrigo Esteves baitsart@gmail.com www.youtube.com/user/baitsart #

af Afrikaans
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
zh-tw Chinese-Traditional
