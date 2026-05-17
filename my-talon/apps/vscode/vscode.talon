app: Code.exe

-

# File Commands
file format: user.vscode("editor.action.formatDocument")
file show base: user.vscode("git.openFile")
file switch:
    user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup")
    key(enter)

# Language Features
ref next: user.vscode("references-view.next")
ref previous: user.vscode("references-view.prev")
fix: key(ctrl-.)

# Sidebar
bar switch aux: user.vscode("workbench.action.toggleAuxiliaryBar")

# Settings
show settings {user.cursorless_homophone}:
    user.vscode("workbench.action.openSettings")
    insert("cursorless")
show shortcuts record:
    user.vscode("workbench.action.openGlobalKeybindings")
    user.vscode("keybindings.editor.recordSearchKeys")

# VSCode Snippets
snip snip: user.vscode("editor.action.insertSnippet")
