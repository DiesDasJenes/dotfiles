#!/bin/bash
cd ~/git
find . -type d -name ".git" | while read repo ; do
(
cd $repo/..
if [[ $(pwd) != *".terraform"* ]]; then
 echo "****************************** updating $(pwd) ******************************"
 git pull -r --autostash
fi

)
done;
