require "squad_goals"
SquadGoals.views_dir = File.expand_path("./views", File.dirname(__FILE__))

# Hey, let's encrypt!
CHALLENGES = {
  "md2O7Zkol2kEpSaZhhQ5ScXh1MLu0XNsK5GMkEcpl0g" => "md2O7Zkol2kEpSaZhhQ5ScXh1MLu0XNsK5GMkEcpl0g.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
  "ENLKQEfljp7r9UMJdXaTAeQZd4EjU0b7DTtT7uztqxQ" => "ENLKQEfljp7r9UMJdXaTAeQZd4EjU0b7DTtT7uztqxQ.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
}.each do |path, ret|
  SquadGoals::App.get "/.well-known/acme-challenge/#{path}" do
    ret
  end
end

run SquadGoals::App
