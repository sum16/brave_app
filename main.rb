require './brave'
require './monster'
require './games_controller'


brave = Brave.new(name: "勇者", hp: 500, offense: 150, defense: 100)
monster = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)

puts <<~TEXT
名前: #{brave.name}
攻撃力: #{brave.offense}
防御力: #{brave.defense}
体力: #{brave.hp}
---------------------------
TEXT

puts <<~TEXT
名前: #{monster.name}
攻撃力: #{monster.offense}
防御力: #{monster.defense}
体力: #{monster.hp}
TEXT

games_controller = GamesController.new
games_controller.battle(brave: brave, monster: monster)