#! /bin/sh

STMP=srm-temp
USAGE="Usage: srm FILES..."

if [ $# -eq 0 ]; then
	echo ""
	echo "$USAGE"
	echo ""
	exit 1
fi

echo ""
echo "  Making temp directory."
mkdir -p "$STMP"

echo ""
echo "  Moving files to temp directory."
echo ""
for ARG in "$@"
do
	mv -v "$ARG" "$STMP"
done

echo ""
echo "  Remove files in temp directory? [Y/n]"
while true; do
	read yn
	case $yn in
		[Yy] ) break;;
		[Nn] ) echo "Files kept in ./$STMP/" && exit;;
		"" ) break;;
		* ) ;;
	esac
done

echo ""
echo "  Removing temp directory."
echo ""
rm -rv "$STMP"

echo ""
echo "  Done."
echo ""
