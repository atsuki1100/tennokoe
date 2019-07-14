json.array! @likes do |like|
  json.id like.id
  json.user_id like.user_id
  json.answer_id like.answer_id
end