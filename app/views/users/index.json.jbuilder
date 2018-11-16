json.users @users do |user|
  json.user_name user.user_name
  json.email user.email
  json.posts user.posts
end
