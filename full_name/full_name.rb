def full_name(first_name = '', last_name = '')
  return nil if !first_name.is_a?(String) || !last_name.is_a?(String)
  return nil if first_name.empty?
  return first_name.capitalize if last_name.empty?

  "#{first_name.capitalize} #{last_name.capitalize}"
end
