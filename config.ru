require 'squad_goals'
SquadGoals.public_dir = File.expand_path("./public", File.dirname(__FILE__))
run SquadGoals::App
