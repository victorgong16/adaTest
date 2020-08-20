#!/bin/sh
set -x
sqlite3 ../database.db < testdata.sql
