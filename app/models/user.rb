class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  #validates :name, presence: true
  #validates :birthday, presence: true
  #validates :gender, presence: true
  #validates :phone, presence: true
  #validates :location, presence: true
  #validates :about, presence: true
  
  has_one_attached :avatar
  
  has_many :reviews
  # has_and_belongs_to_many :mangas, join_table: 'favourites'
  has_many :favourites
end
