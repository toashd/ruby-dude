require 'ruby-dude/version'
require 'net/http'
require 'open-uri'
require 'nokogiri'
require 'cgi'

module RubyDude
  class LebowskiIpsum
    # A simple Lebowski Ipsum generator for Ruby.
    # Generates the lebowski ipsum paragraphs.
    #
    # options - The Hash options used to Lebowski-fy the hell out of it! (default: {}):
    #           :paragraphs     - How many paragraphs, man? (optional).
    #           :cussin         - Throw in some cussin'? (optional).
    #           :mixed          - White Russian! Mix Lebowski quotes with old fashioned Lorem Ipsum (optional).
    #           :lebowskiipsum  - I'm the dude! Start the first paragraph with 'Lebowski Ipsum' (optional).
    #           :html           - Pigs in Blanket! Wrap your filler text in zee HTML tacs, OK? (optional).
    #           :characters     - Shut the fuck up, Donny! Want to refine the dialogue? (optional).
    #
    # Example:
    #   RubyDude::LebowskiIpsum.generate
    #   # => Lebowski ipsum you know, the usual...
    #
    # Returns a lebowskified string.
    def self.generate(options = {})
      defaults = {
        paragraphs: '5',
        cussin: 'true',
        mixed: 'false',
        lebowskiipsum: 'false',
        html: 'false',
        characters: '1'
      }

      options = defaults.merge(options)

      # http://www.lebowskiipsum.com/dude/generate/paragraphs/5/cussin/true/mixed/true/startleb/true/html/true/characters/1,2,3,4,5,8,9
      uri = 'http://www.lebowskiipsum.com/dude/generate' +
              '/paragraphs/' + options[:paragraphs] +
              '/cussin/' + options[:cussin] +
              '/mixed/' + options[:mixed] +
              '/startleb/' + options[:lebowskiipsum] +
              '/html/' + options[:html] +
              '/characters/' + options[:characters]

      req = URI.parse uri
      res = Net::HTTP.get_response req

      if res.code == '200'
        page = Nokogiri::HTML(res.body)
        text = page.css('textarea#lebowskiIpsum').text

        CGI.unescapeHTML(text).force_encoding('UTF-8') if text
      else
        'Well, uh ... looks like you got the wrong guy.'
      end
    end
  end
end