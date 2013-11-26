class User < ActiveRecord::Base
	has_many :events
	attr_accessible :firstname, :lastname, :email
end
