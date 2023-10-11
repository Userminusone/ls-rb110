munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  age = value["age"]
  value["age_group"] = if age <= 17
                         "kid"
                       elsif age <= 64
                         "adult"
                       else
                         "senior"
                       end
end

p munsters