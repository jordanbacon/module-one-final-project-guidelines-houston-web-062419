class Value < ActiveRecord::Base
    belongs_to :house
    belongs_to :student
end