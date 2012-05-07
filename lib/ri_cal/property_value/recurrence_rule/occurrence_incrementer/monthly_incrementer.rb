module RiCal
  class PropertyValue
    class RecurrenceRule < PropertyValue
      class OccurrenceIncrementer # :nodoc:
        class MonthlyIncrementer < FrequencyIncrementer #:nodoc:

          def self.for_rrule(rrule)
            conditional_incrementer(rrule, "MONTHLY", ByWeekNoIncrementer)
          end

          def advance_what
            :months
          end

          def step(date_time)
            if contains_daily_incrementer?
              result = super(date_time).change(:day => 1)
              result
            else
              super(date_time)
            end
          end

          def end_of_occurrence(date_time)
            date_time.end_of_month
          end
        end
      end
    end
  end
end
