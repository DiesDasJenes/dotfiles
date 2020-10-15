# DiesDasJenes’s dotfiles
![Screenshot of my shell prompt](https://i.imgur.com/eZQeFdj.png)

### MacOS pull all repos
Use the 'pullAllRepos.sh' to pull all repos under this path '~/git/'.*
Use the 'pullRebaseAllRepos.sh' to pull and rebase all repos under the current path. 

Use crontab with the following commands:

```bash
crontab -l # for viewing current crons
crontab -e # editing crontabs, use nano to edit crontab
```

Usual configuration looks like this:
```bash
0 12 * * 3  cd ~/backupZSH/ && ./backupHistory.sh >/tmp/stdout.log 2>/tmp/stderr.log
```

### Backup your shell history

Always backup your shell history. Your whole command knowledge depends on it. fzf is your best friend.  

Use crontab for this:

```bash
0 12 * * 3  cd ~/backupZSH/ && ./backupHistory.sh >/tmp/stdout.log 2>/tmp/stderr.log
``` 

### Saml2AWS function for zsh 

What is Saml2AWS: https://github.com/Versent/saml2aws
This function enables lazy login for saml2aws:

function saml2aws {
  command saml2aws login -a PROJECT-ENV@"$1" --force
  export AWS_PROFILE=PROJECT-ENV@"$1"
  export AWS_REGION=eu-central-1
}

### Set identity for git with one command

```bash
alias git-identity-projectX='git config user.name "Name Name" && git config user.email emailAddress'
```

### Search recursively within files after keyword

```bash
find . -name '*.sh' -exec grep -I "to\_base64" '{}' '+'
```
