class Tree
    attr_accessor :type                                     #attr_accessor methodu hem okuma hemde yazma işlevine sahiptir fonksiyon içinde tanımlamaya bidaha gerek yoktur.
    
    def turu_ne?
        puts @type
    end
end

class Cherry_Tree < Tree
    
    
    def initialize(fruit)
        @fruit = fruit
    end

    def hangi_meyve?
        puts @fruit    
    end
end

k = Cherry_Tree.new("Kiraz")
k.type = ("Kiraz Ağacı")
k.what_type?()
k.which_fruit