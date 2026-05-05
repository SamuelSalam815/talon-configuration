tag: user.find
-
find this: edit.find()
find this (pace | paste):
    edit.find()
    sleep(25ms)
    edit.paste()
find this <user.text>: edit.find(text)
find next: edit.find_next()
find previous: edit.find_previous()
find all: user.find_everywhere("")
find all (pace | paste):
    user.find_everywhere("")
    sleep(25ms)
    edit.paste()
find all <user.text>: user.find_everywhere(text)
find case: user.find_toggle_match_by_case()
find word: user.find_toggle_match_by_word()
find expression: user.find_toggle_match_by_regex()
