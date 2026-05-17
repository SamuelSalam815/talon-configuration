tag: terminal
-

get child item: insert("Get-ChildItem ")
get child item recurse: insert("Get-ChildItem -Recurse -Filter ")

select string: insert("Select-String ")

for each object:
    insert("% { ")
    key($)
    insert("_ } ")
    key(left)
    repeat(4)

make die:
    insert("New-Item -ItemType Directory -Name \"")
    insert(text or "")
    insert("\"")
    key(left)

make file [<user.text>]:
    insert("New-Item -Path . -ItemType File -Name \"")
    insert(text or "")
    insert("\"")
    key(left)
