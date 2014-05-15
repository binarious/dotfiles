# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils
# Install GNU `sed`, overwriting the built-in `sed`
install gnu-sed --default-names
# Install Bash 4
install bash

# Install wget with IRI support
install wget --enable-iri

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
#install ringojs
#install narwhal

# Install more recent versions of some OS X tools
install vim --override-system-vi
install homebrew/dupes/grep
install homebrew/php/php55 --with-gmp

# Install other useful binaries
install ack
install ant
install autoconf
install bash
#install brew-cask
install cloc
install coreutils
install curl
install findutils
install fish
install freetype
install geoip
install gettext
install git
install glib
install gmp
install gnutls
install grep
install icu4c
install jpeg
install jsmin
install libffi
install libgcrypt
install libgpg-error
install libpng
install libtasn1
install libtool
#install lua52
install lynx
install narwhal
install nettle
install nmap
install node
install openssl
install p7zip
install pcre
install php53
install php53-intl
install php55
install pigz
install pkg-config
install qt
install readline
install rename
install rhino
install ringojs
install serf
install sqlite
install subversion
install tree
install unixodbc
install webkit2png
install wget
install wireshark
install xz
install zlib
install zopfli

# Remove outdated versions from the cellar
cleanup



