module RiCal
  class PropertyValue
    class RecurrenceRule < PropertyValue
      class OccurrenceIncrementer # :nodoc:
        class MinutelyIncrementer < FrequencyIncrementer #:nodoc:
          def self.for_rrule(rrule)
            conditional_incrementer(rrule, "MINUTELY", BySecondIncrementer)
          end

          def advance_what
            :minutes
          end

          def end_of_occurrence(date_time)
            date_time.end_of_minute
          end
        end
      end
    end
  end
end
