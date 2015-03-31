class User < ActiveRecord::Base
  belongs_to :program
  has_many :enrollment
end
