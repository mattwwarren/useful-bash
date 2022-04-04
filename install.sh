#!/bin/bash

CHECKOUTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -w ~/.bashrc ]
then
  rm -i ~/.bashrc
fi

if [ -d ~/.bashrc.d ]
then
  rm -ir ~/.bashrc.d
fi

if [ -d ~/.bash_profile ]
then
  rm -ir ~/.bash_profile
fi

ln -s ${CHECKOUTDIR}/.bashrc ~/.bashrc
ln -s ${CHECKOUTDIR}/.bashrc.d ~/.bashrc.d
ln -s ${CHECKOUTDIR}/.bash_profile ~/.bash_profile

print "If you see no errors, you can restart your shell session with expected profile settings"
