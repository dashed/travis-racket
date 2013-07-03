set -e

URL="http://download.racket-lang.org/installers/$RACKET-VERSION/racket/racket-$RACKET-VERSION-bin-x86_64-linux-ubuntu-precise.sh"
INSTALL="./racket-$RACKET-VERSION.sh"

echo "Downloading $URL to $INSTALL:"
curl -o $INSTALL $URL

echo "Running $INSTALL to install Racket:"
chmod u+rx "$INSTALL"
sudo "$INSTALL" <<EOF
no
1

EOF

exit 0
