#!/bin/bash

for nev in $(cat ../nevek.txt)
do
mkdir -p $nev
echo [Privat_$nev] >> smb.conf
echo path = /megoszt/$nev >> smb.conf
echo browsable = yes >> smb.conf
echo allowed users = $nev >> smb.conf
echo valid users = $nev >> smb.conf
echo >> smb.conf
echo >> smb.conf
done

for szint in $(cat ../szintek.txt)
do
mkdir -p $szint
echo [$szint] >> smb.conf
echo path = /megoszt/$szint >> smb.conf
echo browsable = yes >> smb.conf
echo allowed users = @$szint >> smb.conf
echo valid users = @$szint >> smb.conf
echo >> smb.conf
echo >> smb.conf
done

for szoba in $(cat ../szobak.txt)
do
mkdir -p $szoba
echo [$szoba] >> smb.conf
echo path = /megoszt/$szoba >> smb.conf
echo browsable = yes >> smb.conf
echo allowed users = @$szoba >> smb.conf
echo valid users = @$szoba >> smb.conf
echo >> smb.conf
echo >> smb.conf
done
