today=$(date +%Y-%m-%d)

echo "making new blog post, enter a name:"
read -r -p 'post name: ' desc
read -r -p 'tags: ' tag
read -r -p 'link: ' link

FILE=$today-$desc.md

if test -f "$FILE"; then
        echo "file exists"
else
        echo "making file: $today-$desc"
        python3 make_file.py $today $tag $link $desc
        echo "file made"
fi
