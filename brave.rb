require './character'

class Brave < Character

    SPECIAL_ATTACK_CONSTANT = 1.5

    def attack(monster)

    attack_type = decision_attack_type
      puts "#{@name}の攻撃"
  
      
  
      if attack_type == "special_attack"
        puts "必殺攻撃"
        damage = calculate_special_attack - monster.defense
      else
        puts "通常攻撃"
        damage = @offense - monster.defense
      end
  
      monster.hp -= damage

      #hpが0以下になればhpを0にする
      monster.hp = 0 if monster.hp < 0
      puts "#{monster.name}は#{damage}のダメージを受けた"
      puts "#{monster.name}の残りHPは#{monster.hp}だ"
    end

    def decision_attack_type
        attack_num = rand(4)
       if  attack_num == 0
          return "special_attack"
       else
        return "nomal_attack"
       end
    end

  
    def calculate_special_attack
      @offense * SPECIAL_ATTACK_CONSTANT
    end
  
  end