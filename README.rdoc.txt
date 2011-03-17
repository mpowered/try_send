= try_send

http://www.github.com/mpowered/try_send

== DESCRIPTION:

Used to create method chains that have optional/non-failing segments.
(Aliased as #send_if)

Example:
   name = 'Ben'
   name2 = 'Jerry'
   name.send_if(:reverse) {|n| n == 'Ben'}.capitalize
   name2.send_if(:reverse) {|n| n == 'Ben'}.capitalize
   => 'Neb'
   => 'Jerry'

If no block is given then the method will be sent to the object if the object
responds to it. This means that NoMethodErrors won't destroy your chain.

Example:
   'hello'.try_send(:undefined_method).upcase
   => 'HELLO'


== INSTALL:

Use bundler. Its not on a public gem server. (see gembundler.com/git.html)

== DEVELOPERS:

* Gary Greyling

== LICENSE:

(The MIT License)

Copyright (c) 2011 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
