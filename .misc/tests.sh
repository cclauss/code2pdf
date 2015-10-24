set -e
set -x

echo "TEST: Testing X server conf"
export $(dbus-launch)
echo $DISPLAY
echo $XAUTHORITY
if [ ! -f ~/.Xauthority ]; then
	echo "~/.Xauthority not available"
else
	echo "It exists"
	cat ~/.Xauthority
fi
python tests/test.py
