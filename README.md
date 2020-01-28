## pleroma custom repo

path: `/var/lib/pleroma/`

### custom emoji
[pleroma docs - custom emoji](https://docs-develop.pleroma.social/backend/configuration/custom_emoji/#custom-emoji)

includes also emojis from:
- https://fedi.absturztau.be/emoji-packs/index.html

#### notice

please consider adding emojis to `emoji.txt`!

example:
```
foo, /emoji/custom/foo.png, Tag1,Tag2
bla, /emoji/custom/bla.png
```

#### add `emoji.txt` for new pack
```
newpack='MYSTUFF'

cd static/emoji/"$newpack"
for file in $(dir); do printf '%s, /emoji/%s/%s\n' "${file%.*}" "$newpack" "$file" >> tmp.txt ; done
sort -o emoji.txt tmp.txt ; rm tmp.txt
```
