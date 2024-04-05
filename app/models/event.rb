class Event < ApplicationRecord
    before_save :set_default_date

    def set_default_date
        self.date ||= Date.today
    end
end
