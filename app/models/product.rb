class Product < ActiveRecord::Base
	searchkick
	has_many :pricemeasures, dependent: :delete_all
	has_many :supermarkets, through: :pricemeasures
	has_many :listitems, dependent: :delete_all

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "30x30>" }, :default_url => "/images/:style/smoki.jpeg"

	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates :bar_code, format: { with: /\A([0-9]{8}|[0-9]{13})\Z/, message: "%{value} must be 13 or 8 digits for bar_code"}
	
	def self.search(search)
		if search
			find(:all, :conditions =>['name LIKE ?',"%#{search}%"])
		else
			find(:all)
		end
	end

end
