require "squad_goals"
SquadGoals.views_dir = File.expand_path("./views", File.dirname(__FILE__))

# Hey, let's encrypt!
CHALLENGES = {
  "FcX7uFuUxzQeE1j_ygJuiQ4WzWmJsN_e5T6JKgfMWPM" => "FcX7uFuUxzQeE1j_ygJuiQ4WzWmJsN_e5T6JKgfMWPM.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
  "KlA1DaFzUuCn8V6thlCihkX22HHVoeTQkeVmcHKZ0pM" => "KlA1DaFzUuCn8V6thlCihkX22HHVoeTQkeVmcHKZ0pM.HjZ-zOfQKeVzon_cqvbSnHBDh8vLRmZvK2agvIgwU6E",
}.each do |path, ret|
  SquadGoals::App.get "/.well-known/acme-challenge/#{path}" do
    ret
  end
end

run SquadGoals::App
