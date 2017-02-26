"""
Pulling Out Files from Nested Directories 

Description:
If you ever find yourself in a situation where you have to pull files
from nested directories or multiple directories (i.e. pulling 50 individual 
.mp3 recordings from their respective folders), here are some commands that
will help you get them out and organize better.
"""

#Find all files in this directory and its sub-directories and execute mv with target directory. For each file found to move them to current directory.

    find . -mindepth 2 -type f -print -exec mv {} . \;

#Then move all files to desired directory.

    mv *.SomeFileExtension DesiredDirectory



