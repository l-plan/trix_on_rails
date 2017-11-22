module TrixOnRails
	class Upload < ApplicationRecord

		has_attached_file 	:image, :path => Proc.new{|x| ":rails_root/public/uploads/:id/:style/:filename"},
							:url => "/uploads/:id/:style/:filename",
							:styles => { :medium => "300x300>",:thumb => "100x100>", :article=>"50x50"},
							:default_style =>:medium,
							:default_url =>:medium

		validates_attachment 	:image, 
								:presence => true,
								:content_type => { :content_type => /\Aimage\/.*\Z/ },
								:size => { :less_than => 1.megabyte }
												
	end
end
