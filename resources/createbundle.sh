#!/bin/sh
set -x

git clone git@github.com:AdaSupport/techhiringtest.git /tmp/ada-test
cd /tmp/ada-test
rm -fr .git solutions
git init 
git add .
git commit -nam "Ada Test"
git bundle create ada-test.bundle --all
cd /tmp
cp  /tmp/ada-test/ada-test.bundle /tmp
zip /tmp/ada-test.bundle.zip /tmp/ada-test.bundle
rm -rf /tmp/ada-test

