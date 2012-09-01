# HTML5 Beautifier

[HTML5 Beautifier](http://jarijokinen.com/html5-beautifier) is an extension to Ruby that process an HTML5 document and reformat it with a correct indentation.

## Features

* Removes blank lines
* Indents markup using two spaces by default
* Does not touch preformatted elements

## Installation

### Ruby on Rails

Add this line to your application's Gemfile:

    gem "html5-beautifier"

And then execute:

    $ bundle

### Other Ruby applications

Install the gem:

    $ gem install html5-beautifier

## Usage

### Ruby on Rails

    "Hello World".beautify

### Other Ruby applications

Require the gem:

    require "html5-beautifier"

Then use it:

    puts "Hello World".beautify

### Output

The above example outputs:

    <!DOCTYPE html>
    <html>
      <body>
        <p>Hello World</p>
      </body>
    </html>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Support

If you have any questions or issues with HTML5 Beautifier, or if you like to report a bug, please create an [issue on GitHub](https://github.com/jarijokinen/html5-beautifier/issues).

## License

MIT License. Copyright (c) 2012 [Jari Jokinen](http://jarijokinen.com). See [LICENSE](https://github.com/jarijokinen/html5-beautifier/blob/master/LICENSE.txt) for further details.
