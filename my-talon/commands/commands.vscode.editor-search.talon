app: Code.exe
title: /Search:.*focus:\[.*\]/

-

pop cog:
    user.vscode("search.action.focusFilesToExclude")
    key("tab")
    key("enter")

focus search: user.vscode("search.action.focusQueryEditorWidget")
focus include: user.vscode("search.action.focusFilesToInclude")
focus exclude: user.vscode("search.action.focusFilesToExclude")

next: user.vscode("search.action.focusNextSearchResult")
last: user.vscode("search.action.focusPreviousSearchResult")
