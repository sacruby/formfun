module PeopleHelper
  def format_address(a)
    [a.street, a.city, a.state, a.zip].compact.join(", ")
  end

  def format_address_table_label(address)
    label = "Address"
    if address.location_type
      label << " (#{address.location_type.name})"
    end
    label
  end

  def phone_list(p)
    p.phones.map(&:number).join(", ")
  end
end
