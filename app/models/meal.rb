class Meal < ApplicationRecord
  belongs_to :user
 # validate :date_scope

 # private

  # def date_scope
   # if Meal.where("user_id = ? AND DATE(created_at) = DATE(?)", self.user_id, Time.now).all.any?
    #  errors.add("Só pode criar uma refeição por dia")
    #end
  #end
end
