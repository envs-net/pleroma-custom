## pleroma custom repo

path: `/var/lib/pleroma/`

### custom emoji

[pleroma docs - custom emoji](https://docs-develop.pleroma.social/backend/configuration/custom_emoji/#custom-emoji)

includes also emojis from:

- <https://emoji-repo.absturztau.be/>
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
- blobfox_extra and misc - various, including @airis@pleroma.envs.net
- neofox-extra - @aris@pleroma.envs.net
- konqi - <https://community.kde.org/Promo/Material/Mascots>
- xenia: <https://meow.social/@rinidisc/111333089243157952>, <https://meow.social/@rinidisc/109791952664927854>, and <https://rinidisc.com/2023/2023.html>
- zero two: <https://archive.org/details/002-emotes/> + unknown
- pig flags: <https://archive.org/details/serbiapig/>
- waluigi blob: <https://www.reddit.com/r/Waluigi/comments/a70m54/i_did_a_cute_waluigi_emoji_for_discord/>
- Pride flags: mostly from WikiMedia Commons.
- openSUS: <https://todon.nl/@schratze/107678159846609667>
- shitty logos: [shitty_logos telegram sticker pack](https://fstik.app/stickerSet/shitty_logos) + various others
- Spy X Family: <https://ko-fi.com/s/44e46f4f3f>
- Vtubers: @enigmatico@mk.absturztau.be
- drgn: <https://volpeon.ink/projects/emojis/drgn/>
- turtle: <https://github.com/TurtleEmotes/Turtles>
- fatcat: <https://ko-fi.com/sunpawbean>
- Smilky Pokemon: <https://ko-fi.com/smilkyshake>
- Umirinart: <https://ko-fi.com/umirinart/>
- Among Us: <https://pidgels.gumroad.com/l/iLmkv>
- Matcha: <https://ko-fi.com/s/f67eddbf93>
- Padoru: various; see `credits.txt` in its directory.
- Gura: curated by @julia@eepy.moe from Discord servers.
- Ferris: <https://dzuk.zone/emoji>
- blobhaj flags: <https://heatherhorns.com/emoji/>
- cats: <https://git.gay/sneexy/fedi-emoji-packs>
- birbs: <https://squawk.social/@EricMalves/111584664139895889>
- blue mushroom: <https://ko-fi.com/s/a1de5de3bd>
- bugsnax: <https://emojis-are-cool.carrd.co/>
- month_year: <https://emojis-are-cool.carrd.co/>
- smiggles: <https://ko-fi.com/smiggles/>
- Shibabo Studio: <https://linktr.ee/shibabo.studio>
- pokeblobs: <https://blobs.gg/>
- llamas: <https://www.deviantart.com/jerikuto>, <https://www.weibo.com/huiro>
- gopher: <https://github.com/tenntenn/gopher-stickers>
- froggie: <https://github.com/seanprashad/slackmoji/blob/master/emoji/froggie/README.md> (original source unknown; tell Seirdy if you find it!)

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

