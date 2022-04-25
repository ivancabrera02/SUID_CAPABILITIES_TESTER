#!/bin/bash

#tester SUID, SGID and Capabilities by Iván Cabrera

echo "Your Tester is ready!"
echo ""
echo "[1] SUID"
echo "[2] SGID"
echo "[3] Capabilities"
echo ""
read -p "Select an option: " n

case $n in

1)
  find / -perm -4000 -ls
;;

2)
  find / -perm -2000 -ls
;;

3)
  getcap -r / 2>/dev/null
;;

*)
  echo "Sorry but your option isn´t in the list"
;;
esac
