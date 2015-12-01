class Skill < ActiveRecord::Base
  has_many :user_has_skills
  has_many :users, through: :user_has_skills
end
