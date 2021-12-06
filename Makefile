VERSION=0.9.7

all: kopia-html-ui.v${VERSION}.tgz clean

kopia-html-ui.v${VERSION}.tgz:
	ftp https://github.com/kopia/kopia/archive/refs/tags/v${VERSION}.tar.gz
	tar xzf v${VERSION}.tar.gz
	cd kopia-${VERSION} && gmake html-ui REACT_APP_FULL_VERSION_INFO="${VERSION} on `date`" REACT_APP_SHORT_VERSION_INFO="v${VERSION}"
	cd kopia-${VERSION}/htmlui && tar czf ../../kopia-html-ui.v${VERSION}.tgz build

commit:
	git add .
	git commit -m "add v${VERSION}

clean:
	rm -rf v${VERSION}.tar.gz kopia-${VERSION}
