module ContactsHelper
	def edit_contact_link(contact)
		link_to('Edit', edit_contact_path(contact))
	end

	def delete_contact_link(contact)
		link_to('Delete', contact, method: :delete, data: {confirm: 'Are you sure you want to delete this contact?'})
	end
end

