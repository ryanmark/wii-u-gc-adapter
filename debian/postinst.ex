#!/bin/sh
# postinst script for wii-u-gc-adapter

set -e

case "$1" in
    configure)
    # Since we're installing a service script, we
    # need to update rc.d
    # ... I hope.
    if [ -x /etc/init.d/wii-u-gc-adapter ]; then
        update-rc.d wii-u-gc-adapter defaults
    fi
    ;;

    abort-upgrade|abort-remove|abort-deconfigure)
    ;;

    *)
        echo "postinst called with unknown argument '$1'" >&2
        exit 1
    ;;
esac

# dh_installdeb will replace this with shell code automatically
# generated by other debhelper scripts.

#DEBHELPER#

exit 0
