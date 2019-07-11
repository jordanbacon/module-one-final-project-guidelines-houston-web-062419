class Student < ActiveRecord::Base
    has_many :houses
    has_many :ideal, through: :values
end