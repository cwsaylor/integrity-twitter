Integrity
=========

[Integrity][] is your friendly automated Continuous Integration server.

Integrity Twitter Notifier
===========================

This lets Integrity send a tweet after each build is made.

Setup Instructions
==================

Step 1. Install this gem via `sudo gem install -s http://gems.github.com 
cwsaylor-integrity-twitter`

Step 2. Add the following lines to your Rackup (ie, `config.ru`) file:

    require "rubygems"
    require "notifier/twitter"
  
Step 3. Profit! Just kidding. Edit the project and update your twitter email
address and password.

Run the tests
==================

    rake spec

License
=======

(The MIT License)

Copyright (c) 2008 Chris Saylor

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
