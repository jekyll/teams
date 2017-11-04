require "squad_goals"
SquadGoals.views_dir = File.expand_path("./views", File.dirname(__FILE__))

# Hey, let's encrypt!
CHALLENGES = {
  "UKBjcqWIpvM9EBvGNcbzTNRb3TX4NDVdS1T3A-T0U3A" => "UKBjcqWIpvM9EBvGNcbzTNRb3TX4NDVdS1T3A-T0U3A.0_FB5JN2q3eP2QoJorWBJ10AmdI7syymrX7zhZx_xIc"
}.each do |path, ret|
  SquadGoals::App.get "/.well-known/acme-challenge/#{path}" do
    ret
  end
end

run SquadGoals::App
