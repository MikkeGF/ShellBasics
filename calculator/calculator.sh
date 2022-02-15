#!/bin/bash
# simple calculator. There could be better error handling. Float is not supported
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]] || [ ! $# -eq 2 ] ; then
   echo "Hi, i am calculator. Please give me 2 numbers only and i cant handle float numbers. Sorry!" >&2; exit 1
else
cat <<EOF
Thank You!
===========================================================================
Do you want sum(+), subtract(-), multiply(*) or divide(/) numbers you added?
===========================================================================
EOF
read USERINPUT
fi

case $USERINPUT in
    '+' | 'plus')
        echo "$1 plus $2 equals $(($1 + $2))"
       ;;
    '-' | 'minus')
       echo "$1 minus $2 equals $(($1 - $2))"
       ;;
    '*' | 'multiply')
       echo "$1 multiplied by $2 equals $(($1 * $2))"
       ;;
    '/' | 'divide')
       echo "$1 divided by $2 equals $(($1 / $2))"
       ;;
    *)
    echo 'Type minus(-), plus(+), multiply(*) or divide(/)'
    exec $0 $1 $2
    ;;
esac

