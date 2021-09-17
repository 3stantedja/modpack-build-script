# modpack-build-script

Pulls mods from GitHub (or any git-based repo), builds them, and then publishes them on a user-defined directory.

## Design
- User defines where to publish the built mods (would it be possible to do it in a text file?)
- User pulls mods with pull script (maybe?) to `./build`
    - should we just accept git repo urls? or allow for searching the repo?
        - in that case we might need to define which site is it hosted on.
        - would links be able to be sanitized before passing on to git?
    - rather do we just say "create `build` folder at root of this repo and pull mod repos individually?
- user then builds the mods with script
    - we'd just iterate through the folders one by one and do `./gradlew build`
    - make sure that no inputs are accepted in the script
- user then publishes it to a directory
    - i'd rather do this than pushing it to a remote url (because i don't really know how to do it)
    - how do we set the directory without modifying the script? should we just define it as an environmental variable or use a text file?
