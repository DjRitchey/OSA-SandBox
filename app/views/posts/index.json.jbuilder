json.posts @posts do |product|
  json.user_id product.user_id
  json.title product.title
  json.subtitle product.subtitle
  json.content product.content
end
