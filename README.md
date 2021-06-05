# Dotfiles

These scripts serve to expidite the inital setup processe when loading up a new machine.

## Instructions:

1. Create the RSA Keypair

```
ssh-keygen -t rsa
```

2. Add the public ssh key to github

3. Setup code dir and run the shell scripts

```
cd ~
mkdir code && cd code
git clone git@github.com:alex-mac/dotfiles.git
sh ./macOS-setup-script.sh
```

