require './character'

class Monster < Character
  
    POWER_UP_RATE = 1.5
    CALC_HALF_HP = 0.5
  
    def initialize(**params)
        super(
            name: params[:name],
            hp: params[:hp],
            offense: params[:offense],
            defense: params[:defense]
        )
  
      @transform_flag = false
      @trigger_of_transform = params[:hp] * CALC_HALF_HP
    end
  
    def attack(brave)

      judge_hp(brave)
      puts "#{@name}の攻撃"
  
      damage = @offense - brave.defense
      brave.hp -= damage
     
      puts "#{brave.name}は#{damage}のダメージを受けた"
      puts "#{brave.name}の残りHPは#{brave.hp}だ"
    end

    def judge_hp(brave)
        if @hp <= @trigger_of_transform && @transform_flag == false
            @transform_flag = true
            transform
          end
    end
  
    private
  
      def transform
        transform_name = "ドラゴン"
  
        puts <<~EOS
        #{@name}は怒っている
        #{@name}は#{transform_name}に変身した
        EOS
  
        @offense *= POWER_UP_RATE
        @name = transform_name
      end
  
  end
  
