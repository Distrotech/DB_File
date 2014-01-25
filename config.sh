#!/bin/bash

case ${1} in
	x86_64)sed -i -e "s/^\(LIB.*= \/usr\/lib\).*/\164\/x86_64/" config.in;;
	x86_32)sed -i -e "s/^\(LIB.*= \/usr\/lib\).*/\1x32\/i686/" config.in;;
	i[3-6]86)sed -i -e "s/^\(LIB.*= \/usr\/lib\).*/\1\/i686/" config.in;;
	aarch64)sed -i -e "s/^\(LIB.*= \/usr\/lib\).*/\1/" config.in;;
	*64)sed -i -e "s/^\(LIB.*= \/usr\/lib\).*/\1/64" config.in;;
	*)sed -i -e "s/^\(LIB.*= \/usr\/lib\).*/\1/" config.in;;
esac;
