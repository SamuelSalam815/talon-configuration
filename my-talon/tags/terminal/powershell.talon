tag: terminal
-

get child item: insert("Get-ChildItem ")
select string: insert("Select-String ")

make dir:
    insert("New-Item -ItemType Directory -Name \"")
    insert(text or "")
    insert("\"")
    key(left)

make file [<user.text>]:
    insert("New-Item -Path . -ItemType File -Name \"")
    insert(text or "")
    insert("\"")
    key(left)
