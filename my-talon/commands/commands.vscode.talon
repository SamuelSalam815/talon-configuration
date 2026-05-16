app: Code.exe

-

file format: user.vscode("editor.action.formatDocument")
file new: user.vscode("workbench.action.files.newUntitledFile")

param hint: user.vscode("editor.action.triggerParameterHints")

ref next: user.vscode("references-view.next")
ref previous: user.vscode("references-view.prev")

rename: user.vscode("editor.action.rename")

buff switch:
    user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup")

# pick commands
buff pick: user.vscode("workbench.action.quickOpen")
recent pick: user.vscode("workbench.action.openRecent")
text pick: user.vscode("search.action.openEditor")
symbol pick: user.vscode("workbench.action.showAllSymbols")

# toggling commands
debug pop: user.vscode("workbench.view.debug")
explorer pop: user.vscode("workbench.view.explorer")
extensions pop: user.vscode("workbench.view.extensions")
git pop: user.vscode("workbench.view.scm")
panel pop: user.vscode("workbench.action.togglePanel")
prime pop: user.vscode("workbench.action.toggleSidebarVisibility")
second pop: user.vscode("workbench.action.toggleAuxiliaryBar")
zen pop: user.vscode("workbench.action.toggleZenMode")

# opening commands
base file open: user.vscode("git.openFile")
JSON settings open: user.vscode(workbench.action.openSettingsJson)
keyboard [settings] open: user.vscode("workbench.action.openGlobalKeybindings")
settings open: user.vscode("workbench.action.openSettings")
{user.cursorless_homophone} settings open:
    user.vscode("workbench.action.openSettings")
    insert("cursorless")
keyboard keys open:
    user.vscode("workbench.action.openGlobalKeybindings")
    user.vscode("keybindings.editor.recordSearchKeys")

panel {user.cursorless_homophone}: user.private_cursorless_show_sidebar()
