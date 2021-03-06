#!/bin/sh
PORT_DIR=ncurses
INSTALLOPTS="DESTDIR=$SERENITY_ROOT/Root/"

function fetch() {
    run_fetch_git "https://github.com/mirror/ncurses.git"
    run_patch allow-serenity-os-ncurses.patch -p1
}
function configure() {
    run_configure_autotools
}
function build() {
    run_make
}
function install() {
    run_make_install
}
source ../.port_include.sh
