class Post < ActiveRecord::Base
	attr_accessible :title, :description,:user_id
belongs_to :user
end
