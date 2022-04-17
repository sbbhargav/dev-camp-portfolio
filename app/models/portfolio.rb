class Portfolio < ApplicationRecord
	validates_presence_of :title,:main_image,:tumb_image
end
