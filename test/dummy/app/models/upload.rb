module Trix
	class Upload < ApplicationRecord
		has_attached_file :images, :path => Proc.new{|x| ":rails_root/public/tenants/#{x.instance.tenant.id}//database_imports/:id/plaatsingen/:filename"}
	end
end
