users = [
  { :name => 'Janek', :role => 'admin'},
  { :name => 'Rysiek', :role => 'moderator'},
  { :name => 'Tomek', :role => 'admin'},
  { :name => 'Stanisław', :role => 'moderator'},
  { :name => 'Beata', :role => 'stand_user'}
]

grouped_users = users.group_by { |user| user[:role] }

new_group = grouped_users.transform_values do |users_array|
  users_array.map { |user_hash| user_hash[:name] }
end

puts new_group
