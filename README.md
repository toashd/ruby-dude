# Ruby Dude
### A Lebowski Ipsum generator for Ruby

A simple Lebowski Ipsum generator for Ruby using the wonderful [Lebowski Ipsum](http://lebowskiipsum.com/).


## Installation

Add this line to your application's Gemfile:

    gem 'ruby-dude'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-dude


## Usage

Within your code:

    RubyDude::LebowskiIpsum.generate

Lebowski-fy the hell out of it by providing various optional parameters:

    RubyDude::LebowskiIpsum.generate({
      :paragraphs    => '4'     # How many paragraphs, man?
      :cussin        => 'false' # Throw in some cussin'? Not recommended for client work!
      :mixed         => 'false' # White Russian! Mix Lebowski quotes with old fashioned Lorem Ipsum.
      :lebowskiipsum => 'true'  # I'm the dude! Start the first paragraph with 'Lebowski Ipsum'.
      :html          => 'false' # Pigs in Blanket! Wrap your filler text in zee HTML tacs, OK?
      :characters    => '1,2'   # Shut the fuck up, Donny! Want to refine the dialogue?
    })

On the command line:

    ruby-dude [options]

      -h, --help                C'mon dude give me some usage information
      -p, --paragraphs [number] Number of paragraphs to generate
      -c, --no-cussin           Keep it squeaky clean for client work
      -m, --mixed               Mix Lebowski quotes with old fashioned Lorem Ipsum
      -l, --lebowskiipsum       Start the first paragraph with 'Lebowski Ipsum'
      -t, --html                Wrap your filler text in zee HTML tacs, OK?
      -b, --buddies [buddies]   Shut the fuck up, Donny!


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

Copyright (c) 2013 Tobias Schmid

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.