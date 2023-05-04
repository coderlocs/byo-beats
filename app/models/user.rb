class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bands, inverse_of: :owner, foreign_key: :owner_id, dependent: :destroy

  def full_name
    "#{self.firstname} #{self.lastname}"
  end
end
