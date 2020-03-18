class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :tutos
  has_many :comments

  extend FriendlyId
  friendly_id :pseudo, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end


end
