class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable

  has_many :user_has_skills
  has_many :skills, through: :user_has_skills
  has_many :book_cases
  has_many :books, through: :book_cases
  belongs_to :job

end
