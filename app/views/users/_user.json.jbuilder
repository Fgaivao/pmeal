json.(user, :id, :email, :name, :gender, :weight, :height, :diet, :goal, :dateofbirth)
json.token user.generate_jwt
