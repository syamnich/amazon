module HomeHelper
	def by_author(book)
		"by #{link_to book.author.decorate.full_name}".html_safe
	end
end
