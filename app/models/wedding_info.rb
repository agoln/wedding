class WeddingInfo < ActiveRecord::Base
  attr_accessible :start_time,:end_time,:invite_text,:header,:ceremony,:reception,:accomidation,:car_directions,:flight_directions

    def groom
      User.role(:groom).first
    end

    def bride
      User.role(:bride).first
    end

    def groomsmen
      User.role(:groomsman)
    end

    def bridesmaids
      User.role(:bridesmaid)
    end

    def ring_bearer
      User.role(:ring_bearer).first
    end

    def flower_girl
      User.role(:flower_girl).first
    end
end
