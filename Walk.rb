
class Robot

    attr_reader :daily                                                      

    def initialize(name, owner, step_length)
    
      @name, @owner, @step_length = name, owner, step_length.to_f
      @step_num = nil
      @daily = "- Başlangış noktası.\n"
      @position = 0
      @direction = nil

    end
  
    def say_hi

      puts "Merhaba! Benim adım #{@name}. Beni #{@owner} oluşturdu."
      
    end
  
    def frost(direction)

      if direction == :right || direction == :left
        @direction = direction

      else

        puts "Yön değeri :sağ veya :sol olmalı"

      end
    end
  
    def advance(step_num)

      if @direction == :right
        @position += step_num * @step_length
        @daily += "- Sağ "

      elsif @direction == :left
        @position -= step_num * @step_length
        @daily += "- Sol "

      end
  
      @daily += "yöne #{step_num} adım.\n" if @direction

    end
  
    def location_report

      if @position > 0

        "Başlangıç noktasından sağa doğru #{@position} cm uzaktayım."

      elsif @position < 0

        "Başlangıç noktasından sola doğru #{@position.abs} cm uzaktayım."

      else

        "Başladığım yerdeyim!"

      end
    end
  end
  
  Turkish_bot = Robot.new("Robot", "Barış", "2")

  Turkish_bot.say_hi

  Turkish_bot.frost :right

  Turkish_bot.advance 10

  puts Turkish_bot.location_report

  Turkish_bot.frost :left

  Turkish_bot.advance 18

  puts Turkish_bot.location_report
 
  puts "\nGünlük bilgileri"
  puts "----------------"
  puts "#{Turkish_bot.daily}"
