class Students < ActiveRecord::Base
    has_many :values
    has_many :ideal, through: :values
end