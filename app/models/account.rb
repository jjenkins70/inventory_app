class Account < ActiveRecord::Base
	validates :Email, presence: true
end
