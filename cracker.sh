pkgname=miLazyCracker-git
pkgver=1.0
pkgrel=1
pkgdesc="Lazy NFC Mifare Classic breaker"
arch=('x86_64')
url="https://github.com/nfc-tools/miLazyCracker"
license=('unknown')
depends=('libnfc'
		 'mfoc')
provides=('miLazyCracker')
epoch=1
source=('git+https://github.com/nfc-tools/miLazyCracker.git'
		'miLazyCracker.sh.patch'
		'miLazyCrackerFreshInstall.sh.patch')
sha256sums=('SKIP'
			'4cdce34e789860655f703d2958ca2e803312f47bd19251b3229a6f76101d4d4e'
			'3ffcec68c5c145c14572196743f95d7e6fee6dce19bd54b63a12a3c587e3f5a2')

prepare() {
	cd "$srcdir/miLazyCracker"
	patch < ../miLazyCracker.sh.patch
	patch < ../miLazyCrackerFreshInstall.sh.patch
}

build() {
	: # Do nothing
}

check() {
	: # Do nothing
}

package() {
	cd "$srcdir/miLazyCracker"
	DESTDIR="$pkgdir/" ./miLazyCrackerFreshInstall
