# meta-iCOGNIZE

Private/Public layer of iCOGNIZE (https://icognize.de/) sp7021-based project.

## Dependencies

https://github.com/tibbotech/meta-tibbo
    tibbo

https://git.openembedded.org/openembedded-core
    Core
    networking-layer
    multimedia-layer
    webserver

## Quick links

* Git repo: https://github.com/tibbotech/repo-manifests

## Description

Layer contains private apps, DTSes and image definition for sp7021-based board.

## Quick Start

### Tibbo Layers Setup
```
curl https://raw.githubusercontent.com/tibbotech/repo-manifests/master/clone.sh > ./clone.sh && chmod 0755 ./clone.sh && ./clone.sh
repo3 sync
TEMPLATECONF=`pwd`/layers/meta-tibbo/conf/templates/tppg2 . layers/openembedded-core/oe-init-build-env ./build.tppg2
install -m 0644 ../layers/meta-tibbo/conf/templates/site.conf conf/
```
### + This Layer
```
git clone git@github.com:tibbotech/meta-icognize.git ../layers/meta-icognize
MACHINE=tppg2 bitbake-layers add-layer ../layers/meta-icognize
```

### Append to your local.conf
```
nothing
```

### Building
```
MACHINE=tppg2-icog bitbake mc:tppg2-icog:img-tps-icognize
```
ISPBOOOT.BIN will be placed at BUILDDIR/deploy/images/tppg2/emmc0/

### Notes

>= Nanbield requires kernel 5.10. Fix it.

## Maintainers

* Dvorkin Dmitry `<dvorkin at tibbo.com>`

Read [HOWTO.md](HOWTO.md) description to see how to adopt it.
