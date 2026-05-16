app: Code.exe
title: /Search:.*focus:\[.*\]/

-

clean search: user.vscode("cleanSearchEditorState")

pop exclude:
    user.vscode("search.action.focusFilesToExclude")
    key("tab")
    key("enter")
pop regex: user.vscode("toggleSearchEditorRegex")
pop case: user.vscode("toggleSearchEditorCaseSensitive")
pop word: user.vscode("toggleSearchEditorWholeWord")
pop context: user.vscode("toggleSearchEditorContextLines")

more context: user.vscode("increaseSearchEditorContextLines")
less context: user.vscode("decreaseSearchEditorContextLines")

search focus: user.vscode("search.action.focusQueryEditorWidget")
include focus: user.vscode("search.action.focusFilesToInclude")
exclude focus: user.vscode("search.action.focusFilesToExclude")

next: user.vscode("search.action.focusNextSearchResult")
previous: user.vscode("search.action.focusPreviousSearchResult")
