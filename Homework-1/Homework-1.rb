def full_name(first_name, last_name, title)
  name = nil

  if title && first_name && last_name
    name = title + ' ' + first_name + ' ' + last_name
  elsif title && last_name
    name = title + ' ' + last_name
  elsif first_name && last_name
    name = first_name + ' ' + last_name
  elsif first_name
    name = first_name
  else
    raise "That doesn't look like a name!"
  end

  return(name)
end