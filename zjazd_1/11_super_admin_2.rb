def is_admin?(user)
  user[:role] == 'admin'
end

def is_moderator?(user)
  user[:role] == 'moderator'
end

def display_user_role(user)
  print "#{user[:name]} is "

  if is_admin?(user)
    print "administrator"
  elsif is_moderator?(user)
    print "moderator"
  else
    print "not super user"
  end

  print "\n"
end

def display_users_role(users)
  users.length.times { |i| display_user_role(users[i]) }
end

def display_users_role2(users)
  users.each { |user| display_user_role(user) }
end

users = [
  { :name => 'Janek', :role => 'admin'},
  { :name => 'Rysiek', :role => 'moderator'},
  { :name => 'Franek', :role => 'standard_user' }
]

display_users_role2(users)

# puts users.any? { |user| is_admin?(user) }
