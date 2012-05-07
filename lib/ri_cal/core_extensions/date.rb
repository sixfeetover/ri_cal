require "ri_cal/core_extensions/date/conversions.rb"
require "ri_cal/core_extensions/time/week_day_predicates.rb"
require "ri_cal/core_extensions/time/calculations.rb"
require 'date'

class Date #:nodoc:
  include RiCal::CoreExtensions::Time::WeekDayPredicates
  include RiCal::CoreExtensions::Time::Calculations
  include RiCal::CoreExtensions::Date::Conversions
end
