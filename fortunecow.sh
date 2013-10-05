let r=${RANDOM}%5
let r=r+1

ARANGE=8
animal=$RANDOM
let "animal %= $ARANGE"
case $animal in
    0)
        cow="small"       # Little cow
        ;;
    1)
        cow="sheep"       # Baa
        ;;
    2)
        cow="moose" 
        ;;
    3)
        cow="dragon"      # FUS-RO-DAH
        ;;
    4)
        cow="koala"
        ;;
    5)
        cow="dragon-and-cow"  
        ;;
    6)
        cow="moofasa"       # nevar forget
        ;;
    7)
        cow="stimpy"
        ;;
esac

MRANGE=9
mood=$RANDOM
let "mood %= $MRANGE"
case $mood in
    0)
        feel="-b"
        ;;
    1)
        feel="-d"
        ;;
    2)
        feel="-g"
        ;;
    3)
        feel="-p" 
        ;;
    4)
        feel="-s"       # 4/20 blaze it faggot
        ;;
    5)
        feel="-t"
        ;;
    6)
        feel="-w"
        ;;
    8)
        feel="-y"
        ;;
esac

echo "\e[01;3${r}m"; fortune -s | cowsay -f $cow $feel ; echo "\e[m"


#echo "\e[01;3${r}m"; fortune -s | cowthink -f $cow $feel ; echo "\e[m"     # Uncomment if introvert


#---------------------- Uncomment to vary between speech and thought ----------------------------
#RANGE=2
#mode=$RANDOM
#let "mode %= $RANGE
#case $mode in
#   0) 
#       prog="cowsay"
#       ;;
#   1)
#       prog="cowthink"
#       ;;
#esac
#
#
#echo "\e[01;3${r}m"; fortune -s | $prog -f $cow $feel ; echo "\e[m"
