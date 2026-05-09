app: Code.exe

-

find everywhere: user.vscode("workbench.action.showCommands")
file format: user.vscode("editor.action.formatDocument")

param hint: user.vscode("editor.action.triggerParameterHints")

open keyboard: user.vscode("workbench.action.openGlobalKeybindings")
open keyboard keys:
    user.vscode("workbench.action.openGlobalKeybindings")
    user.vscode("keybindings.editor.recordSearchKeys")
open settings: user.vscode("workbench.action.openSettings")
open cursorless settings:
    user.vscode("workbench.action.openSettings")
    insert("cursorless")
open JSON settings: user.vscode(workbench.action.openSettingsJson)

pick recent: user.vscode("workbench.action.openRecent")
pick file: user.vscode("workbench.action.quickOpen")
pick symbol: user.vscode("workbench.action.showAllSymbols")
pick text: user.vscode("search.action.openNewEditor")

rename: user.vscode("editor.action.rename")

pop explorer: user.vscode("workbench.view.explorer")
pop debug: user.vscode("workbench.view.debug")
pop extensions: user.vscode("workbench.view.extensions")
pop git: user.vscode("workbench.view.scm")
pop prime: user.vscode("workbench.action.toggleSidebarVisibility")
pop second: user.vscode("workbench.action.toggleAuxiliaryBar")
pop zen: user.vscode("workbench.action.toggleZenMode")

pop exclude:
    user.vscode("search.action.focusFilesToExclude")
    key("tab")
    key("enter")

file new: user.vscode("zen.action.files.newUntitledFile")

git stage: user.vscode("git.stageFile")
git offstage: user.vscode("git.unstageFile")
git commit: user.vscode("git.commit")
git push: user.vscode("git.push")
git reset all: user.vscode("git.clean")
