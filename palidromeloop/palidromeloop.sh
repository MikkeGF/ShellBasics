#!/bin/sh
# Asks user input and reverses it. Stops if palidrome like 'saippuakivikauppias'.
cat <<EOF
============================================
Type word and i reverse it for you!
============================================
EOF

read USERINPUT

REVERSE=$( echo $USERINPUT | rev )

if [ $USERINPUT = $REVERSE ]
then
break
echo 'You typed palidrome.'
else
echo $REVERSE
fi