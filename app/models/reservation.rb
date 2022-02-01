class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  belongs_to :city

  validates :user_id, presence: true
  validates :chef_id, presence: true
  validates :city_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
