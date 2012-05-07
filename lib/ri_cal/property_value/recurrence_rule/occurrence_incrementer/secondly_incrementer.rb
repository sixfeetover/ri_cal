module RiCal
  class PropertyValue
    class RecurrenceRule < PropertyValue
      class OccurrenceIncrementer # :nodoc:
        class SecondlyIncrementer < FrequencyIncrementer #:nodoc:

          def self.for_rrule(rrule)
            if rrule.freq == "SECONDLY"
              new(rrule, nil)
            else
              nil
            end
          end

          def advance_what
            :seconds
          end

          def end_of_occurrence(date_time)
            date_time
          end
        end
      end
    end
  end
end
