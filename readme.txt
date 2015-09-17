Unix shell script for making "rm" command a little safer.

Usage is simple: srm.sh filenames...

Note that it works by moving files to a temp folder, then prompts to remove
it. Moved files are shown in output, so you can bail if you decide the files
are important.
