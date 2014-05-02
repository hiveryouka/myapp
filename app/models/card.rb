class Card < ActiveRecord::Base
	validates :name, presence: true
end
