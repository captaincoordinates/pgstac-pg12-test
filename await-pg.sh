#!/bin/sh

while ! nc -z localhost 5432; do echo "waiting on postgres"; sleep 1; done;