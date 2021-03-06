## Open Source Development Environment

Bootstrap shell scripts for provisioning my personal dev box. Targeting Ubuntu or macOS.

See also:
* https://github.com/Offirmo-team/wiki/wiki/macOS
* https://github.com/Offirmo-team/wiki/wiki/dev-env


## Test
Check that bootstrap will work with:
```
[if ubuntu] sudo apt-get install curl
curl -o- https://www.offirmo.net/open-source-dev-env/hello.sh | bash
curl -o- https://www.offirmo.net/open-source-dev-env/hello.sh | sudo bash
```


## Install

### macOS

```
show hidden files:
- temp Apple + shift + . https://apple.stackexchange.com/a/340543
- définitif: defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder

Either:
- type 'git' and accept everyhing asked
- or/and install xcode and lauch it once (but takes disk space!)

curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/common/superuser_ensure_work_structure.sh  | sudo bash
curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/common/user_ensure_work_structure.sh  | bash
         then remove `src` from the spotlight search


IF WANTED copy your keys from previous machine here.
curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/common/user_ensure_ssh_keys.sh  | bash
       + if new, add the new keys to github
         - go here https://github.com/settings/keys
         - test it: `ssh -T git@github.com`
       + DELETE SSH KEYS FROM THE DISK/USB KEY!


GIT NEEDED + git ssh keys:
curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/common/user_ensure_basic_tools_installed.sh  | bash
   (relaunch terminal here, ensure nvm / npm is working)
   (here install the FiraCode font, TrueType preferred)
   (here type "onn")
curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/macos/user_ensure_basic_tools_installed.sh  | bash


curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/macos/superuser_ensure_settings.sh  | bash
curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/common/user_ensure_settings.sh  | bash
   (need npm and yarn)
curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/macos/user_ensure_settings.sh  | bash


curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/common/user_ensure_common_repos_cloned.sh  | bash

# Ruby: https://rvm.io/rvm/install
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

### Ubuntu

```
TODO (re)
```


## Maintain

### macos

`bin/user_update.sh`

```bash
brew update
brew upgrade
brew doctor

pip install --upgrade pip

rvm get stable

docker system prune --all
docker volume prune
```

### If missing, add a debug line to shellrc existing files
```bash
echo "* hello from: .profile"
echo "* hello from: .bashrc"
echo "* hello from: .bash_profile"
echo "* hello from: .bash_logout"
```

### Manual installs
https://www.jetbrains.com/toolbox/app/

### Load settings
* WebStorm: File -> Import settings... -> folder "install/intellij-colors-solarized"
* iTerm (macOs) -> Prefs -> Profiles -> Colors -> color preset -> "ode/misc/iterm2"
* Terminal (macOs) -> Shell -> import -> "install/solarized"
* xcode -> Preferences -> Locations -> Command line tools  https://stackoverflow.com/a/36726612

### (if needed) Setup the Windows share
* https://www.digitalcitizen.life/how-access-ubuntu-shared-folders-windows-7
```
sudo smbpasswd -a sam
sudo gedit /etc/samba/smb.conf
```
* https://github.com/Offirmo-team/wiki/wiki/partage-samba

### login to npm (?)
```
npm adduser
```



## Notes

### Useful commands
```
git stash --include-untracked
git stash save -u ""
git rebase -i master
```

### Useful unicode chars ’☑☐✓❌

### Useful npm modules
* https://github.com/jonathaneunice/iterm2-tab-set

### dual ssh keys
https://github.com/Offirmo-team/wiki/wiki/git
In `.ssh/config`:

```
Host offirmo.github.com
   HostName github.com
   User git
   IdentityFile ~/.ssh/id_rsa_offirmo
   IdentitiesOnly yes

Host xyz.github.com
   HostName xyz.github.com
   User git
   IdentityFile ~/.ssh/id_rsa
   IdentitiesOnly yes
```

```
[remote "origin"]
	url = git@offirmo.github.com:Offirmo/offirmo-monorepo.git
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master
[user]
	email = offirmo.net@gmail.com
	name = Offirmo
[github]
	user = Offirmo
[color]
	ui = auto
[push]
	default = simple
```

Test GitHub SSH: https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection
```bash
ssh -T git@github.com
```


## TODO
...


## Outdated

### Ubuntu

```
curl -o- https://www.offirmo.net/open-source-dev-env/provisioning/ubuntu/superuser_cleanup.sh | sudo bash
```
