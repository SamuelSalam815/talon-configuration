# submodules

This git repair uses submodules to track plugins for talon.

## fetching updates for community

The community submodule is a private fork of the public community repo. It primarily exists in order to track changes to `.csv` files - which, to my knowledge, are tricky to override 'cleanly', unlike `.talon` and `.talon-list` files where we can specify overrides in our own repo.

To fetch updates from the public repo, run the following with the current working directory being `community` inside the talon user file, typically `C:\Users\Sam\AppData\Roaming\talon\user\community`

```
git merge upstream/main
```

# 