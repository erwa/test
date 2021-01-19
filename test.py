#!/usr/bin/python -u
# -u flag causes streams to skip buffering

try:
    print('raising')
    raise RuntimeError('foo')
except Exception as e:
    print('caught')
    print(e)
