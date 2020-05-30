#####################################
#	git installing and configuring	#
#####################################
apt install git -y

#Git: configurations
git config --global user.name "lens"
git config --global user.email "lensoff@gmail.com"
git config --global color.ui true
git config --list

#Git: proxy
git config --global http.proxy http://10.200.81.56:3128
git config --global https.proxy https://10.200.81.56:3128

#############################
#	Git: starting a repo	#
#############################
#from local to remote
git init
touch README.md
echo "my repo" >> README.md
git add .
git commit -m "starting a repo"
git remote -v
git remote add origin git@github.com:lensoff/linuxrepo.git
git push -u origin master

#from remote to local (better use a ssh)
git clone git@github.com:lensoff/linuxdocs.git
git remote -v
git status

#############################
#	Git: checking status	#
#############################
git status

#########################
#	Git: staging files	#
#########################
git add file.txt
git add <file.txt> <file-2.txt> <file-3.txt>
git add .
git add --all
git add -A
git rm --cached <file.txt>
git reset <file.txt>

#####################################
#	Git: commiting to a repository	#
#####################################
git commit -m "Add new files"
git commit -a -m "Add new files"
git reset --soft HEAD^
git commit --amend -m < message >

#########################################################
#	Git: pulling and pushing from and to repositories	#
#########################################################
#git remote add origin < link >
#git push origin master
#or
git push
#git clone < clone >
#git pull

#####################
#	Git: branching	#
#####################
git branch
git branch < branch-name >
git checkout < branch-name >
git merge < branch-name >
git checkout -b < branch-name >

#########################
#	github. using ssh	#
#########################
#Git push requires username and password
#git:
repo - Clone or download - Use SSH
settings - SSH ang GPG keys - New SSH Key
#local machine
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval `ssh-agent -s` #eval $(ssh-agent -s)
ssh-add #ssh-add ~/.ssh/id_rsa

#https://stackoverflow.com/questions/6565357/git-push-requires-username-and-password
#https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
#Git and GitHub for Poets
#https://rubygarage.org/blog/most-basic-git-commands-with-examples
