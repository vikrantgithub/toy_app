class User < ApplicationRecord
  has_many :microposts
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
   validates_length_of :name, :minimum=>6 
end