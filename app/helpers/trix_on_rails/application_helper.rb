module TrixOnRails
	module ApplicationHelper
		def sanitize_trix(str)
			sanitize str, scrubber: TrixOnRails::Scrubber.new
		end
	end
end