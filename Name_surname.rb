class Age
    def initialize(age)
        @@age = age.to_i
    end
  end
  
  class NameSurname < Age
  
    def initialize(age)
        
    end

  end 
  
  puts "Adınızı ve Soyadınızı Giriniz."
  namesurname_text = gets.chomp
  puts "Yaşınızı Giriniz"
  age_text = gets.chomp.to_i

  name = namesurname_text + " " + age_text.to_s
  
  puts "Merhaba #{name}"