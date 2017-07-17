class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable adn :omniauthable
 petergate[roles: [:site_admin, :editor], multiple: false]


	devise :database_authenticatable, :registerable,
		    :recoverable, :rememberable, :trackable, :validatable
		   
	validates_presence_of :name	  

	def first_name
		self.name.split.first 
	end

	def last_name
		self.name.split.last 
	end
end
