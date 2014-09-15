#!/usr/bin/python -u
# -u flag causes streams to skip buffering
import os

for a,b,c in os.walk('.'):
  print a
