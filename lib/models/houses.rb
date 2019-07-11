class House < ActiveRecord::Base
    has_many :values
    has_many :students, through: :values

    # @@all = []

    # def initialize(house_name, founder)
    #     @house_name = house_name
    #     @founder = founder

    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

end