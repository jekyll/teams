require "squad_goals"
SquadGoals.views_dir = File.expand_path("./views", File.dirname(__FILE__))

# Hey, let's encrypt!
CHALLENGES = {
  "RRmYHr9cKmtnQV1bOKXNEM-wPpEC9Te75338Ou6-hpA" => "RRmYHr9cKmtnQV1bOKXNEM-wPpEC9Te75338Ou6-hpA.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E"
}.each do |path, ret|
  SquadGoals::App.get "/.well-known/acme-challenge/#{path}" do
    ret
  end
end

run SquadGoals::App
