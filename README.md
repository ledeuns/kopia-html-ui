# kopia-html-ui
HTML files embedded with [Kopia](https://kopia.io) for use with [OpenBSD](https://www.openbsd.org) port.

### Building
Archive is built with :
```
VERSION=0.9.1
ftp https://github.com/kopia/kopia/archive/refs/tags/v${VERSION}.tar.gz
tar xzf v${VERSION}.tar.gz && cd kopia-${VERSION}
gmake html-ui REACT_APP_FULL_VERSION_INFO="${VERSION} on `date`" REACT_APP_SHORT_VERSION_INFO="v${VERSION}"
cd htmlui && tar czf kopia-html-ui.v${VERSION}.tgz build
```

### Requirements
Building the `html-ui` requires the installation of `lang/node`
