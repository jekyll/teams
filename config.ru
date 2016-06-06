require "squad_goals"
SquadGoals.views_dir = File.expand_path("./views", File.dirname(__FILE__))

# Hey, let's encrypt!
SquadGoals::App.get "/.well-known/acme-challenge/md2O7Zkol2kEpSaZhhQ5ScXh1MLu0XNsK5GMkEcpl0g" do
  "md2O7Zkol2kEpSaZhhQ5ScXh1MLu0XNsK5GMkEcpl0g.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E"
end

run SquadGoals::App
