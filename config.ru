require 'squad_goals'
SquadGoals.views_dir = File.expand_path("./views", File.dirname(__FILE__))
run SquadGoals::App
