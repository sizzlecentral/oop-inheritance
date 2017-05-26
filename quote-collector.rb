# QuoteCollector
# --------------

require_relative 'multilinguist'
require 'httparty'
require 'json'

class QuoteCollector < Multilinguist

  @@quotes = []

  def add_new_quote(string)
    @@quotes << string
  end

  def unleash
    translated = []
    @@quotes.each do |quote|
      translated << say_in_local_language(quote)
    end
    return translated
  end

  def random_quote
    msg = @@quotes.sample
    say_in_local_language(msg)
  end

end

# ----- End of QuoteCollector class ----- #

me = QuoteCollector.new

me.add_new_quote("I think, therefore I am.")
me.add_new_quote("To be, or not to be, that is the question.")
me.travel_to("France")
puts me.unleash
# me.travel_to("Italy")
# puts me.unleash
# puts me.random_quote
