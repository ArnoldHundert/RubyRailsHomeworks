module PostsHelper
	def edit_post_link(post)
		link_to('Edit', edit_post_path(post))
	end

	def delete_post_link(post)
		link_to('Delete', post, method: :delete, data: {confirm: 'Are you sure you want to delete this post?'})
	end
end
