#
# Skeleton file for the Python "Hello World" exercise.
#
from __future__ import unicode_literals

def hello(name = ''):
    name = 'world' if name is '' else name
    return 'Hello, {}!'.format(name)
