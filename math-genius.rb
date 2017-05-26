# Math Genius
# -----------

require_relative 'multilinguist'
require 'httparty'
require 'json'

class MathGenius < Multilinguist

  def report_total(array)
    @report_total = array.sum
    msg = "The total is #{@report_total}."
    say_in_local_language(msg)
  end

end

# ----- End of MathGenius class ----- #

me = MathGenius.new

array1 = [23, 45, 676, 34, 5778, 4, 23, 5465]
puts me.report_total(array1)
me.travel_to("India")
puts me.report_total(array1)
me.travel_to("Italy")
puts me.report_total(array1)
