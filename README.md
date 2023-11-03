## pleroma custom repo

path: `/var/lib/pleroma/`

### custom emoji

[pleroma docs - custom emoji](https://docs-develop.pleroma.social/backend/configuration/custom_emoji/#custom-emoji)

includes also emojis from:

- <https://fedi.absturztau.be/emoji-packs/index.html>
- senko and gyate_th - <https://udongein.xyz/emoji-packs/>
- blobfox - <https://www.feuerfuchs.dev/projects/blobfox-emojis/>
- bunhd - <https://www.feuerfuchs.dev/projects/bunhd-emojis/>
- neocat - <https://volpeon.ink/projects/emojis/neocat/>
- neofox - <https://volpeon.ink/projects/emojis/neofox/>
- blobhaj - <https://heatherhorns.com/emoji/>
- capybaras - <https://www.patreon.com/posts/capybaras-74597806>
- mothcharm - <https://mothcharm.carrd.co/#emoji>
- pride flag heart - <https://ko-fi.com/s/9c742fd6bb>
- portable game console - <https://dzuk.zone/emoji>
- game controllers - <https://dzuk.zone/emoji>
- uwufetch - <https://github.com/TheDarkBug/uwufetch/>
- blobfox_extra - various, including @airis@pleroma.envs.net
- konqi - <https://community.kde.org/Promo/Material/Mascots>
- xenia: <https://meow.social/@rinidisc/111333089243157952>, <https://meow.social/@rinidisc/109791952664927854>, and <https://rinidisc.com/2023/2023.html>
- zero two: <https://archive.org/details/002-emotes/> + unknown
- pig flags: <https://archive.org/details/serbiapig/>
- waluigi blob: <https://www.reddit.com/r/Waluigi/comments/a70m54/i_did_a_cute_waluigi_emoji_for_discord/>
- Pride flags: mostly from WikiMedia Commons.

#### notice

please consider adding emojis alphabetical to `emoji.txt`!

example:

```
foo, /emoji/custom/foo.png, Tag1,Tag2
bla, /emoji/custom/bla.png
```

#### add `emoji.txt` to a new pack

```sh
newpack='MYSTUFF'

cd static/emoji/"$newpack"
for file in $(dir); do printf '%s, /emoji/%s/%s\n' "${file%.*}" "$newpack" "$file" >> tmp.txt ; done
sort -o emoji.txt tmp.txt ; rm tmp.txt
sed -i "/\/emoji.txt/d" emoji.txt
```

