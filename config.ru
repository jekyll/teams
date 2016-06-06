require "squad_goals"
SquadGoals.views_dir = File.expand_path("./views", File.dirname(__FILE__))

# Hey, let's encrypt!
CHALLENGES = {
  "md2O7Zkol2kEpSaZhhQ5ScXh1MLu0XNsK5GMkEcpl0g" => "md2O7Zkol2kEpSaZhhQ5ScXh1MLu0XNsK5GMkEcpl0g.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
  "ENLKQEfljp7r9UMJdXaTAeQZd4EjU0b7DTtT7uztqxQ" => "ENLKQEfljp7r9UMJdXaTAeQZd4EjU0b7DTtT7uztqxQ.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
  "lu1soaSJuZaXTgpKRHRU9AyLBl4lBNiJCJksCD1HhME" => "lu1soaSJuZaXTgpKRHRU9AyLBl4lBNiJCJksCD1HhME.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
  "xBr_RA_-V4zoje5sLuSWSe6qS6M_NYAalBLbnDxXFic" => "xBr_RA_-V4zoje5sLuSWSe6qS6M_NYAalBLbnDxXFic.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
}.each do |path, ret|
  SquadGoals::App.get "/.well-known/acme-challenge/#{path}" do
    ret
  end
end

run SquadGoals::App
