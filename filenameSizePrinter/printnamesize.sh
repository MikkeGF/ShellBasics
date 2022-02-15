#!/bin/sh
# prints filename and filesize from current directory.

exec ls -ld * | awk '{ print "filename: " $9", " "filesize: " $5 " bytes"}'