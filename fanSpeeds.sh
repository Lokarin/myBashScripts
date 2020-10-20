#/usr/bin/bash

case $BLOCK_BUTTON in
	1) echo "Left click" ;;
	2) echo "Right click" ;;
esac

sensors | awk '/^fan/ {printf("%s",$2)}'

