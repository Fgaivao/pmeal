class Meal < ApplicationRecord
  belongs_to :user
  validates :name, :proteins, :hydrates, :vegetables, :protconfection, :hydconfection, :hortconfection, :hydperc, :hortperc, presence: true
  validate :date_scope

  private

   def date_scope
    if Meal.where("user_id = ? AND DATE(created_at) = DATE(?)", self.user_id, Time.now).all.any?
      errors.add("Só pode criar uma refeição por dia")
    end
  end
end
