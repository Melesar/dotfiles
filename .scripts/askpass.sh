#!/bin/sh

echo GETPIN | pinentry | sed -nr '0,/^D (.+)/s//\1/p'
