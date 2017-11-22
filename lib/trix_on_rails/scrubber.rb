module TrixOnRails
	class Scrubber < Rails::Html::PermitScrubber
	  def initialize
	    super
	    self.tags = %w( grey img div span strong i em br figcaption figure a del pre ul li blockquote h1)
	    self.attributes = %w( style href src width height class data)
	  end

	  def skip_node?(node)
	    node.text?
	  end
	end
end