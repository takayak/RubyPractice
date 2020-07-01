class Pokemon
  attr_accessor :name, :at, :hp
 
  def initialize(name, at, hp)
    @name = name
    @at = at
    @hp = hp
  end
 
  def fight(other)
    i = 0
    if self.at > other.at then
      while other.hp >= 1
        other.hp -= self.at
        i += 1
        print "------\n第#{i}戦\n------\n"
        print "#{self.name}の残りHP: #{self.hp}\n#{other.name}の残りHP: #{other.hp}\n"
        sleep 1
      end
    elsif self.at < other.at
      while self.hp >= 1
        self.hp -= other.at
        i += 1
        print "------\n第#{i}戦\n------\n"
        print "#{self.name}の残りHP: #{self.hp}\n#{other.name}の残りHP: #{other.hp}\n"
        sleep 1
      end
    elsif self.at = other.at
      while self.hp >= 1 && other.hp >= 1
        self.hp -= other.at
        other.hp -= self.at
        i += 1
        print "------\n第#{i}戦\n------\n"
        print "#{self.name}の残りHP: #{self.hp}\n#{other.name}の残りHP: #{other.hp}\n"
        sleep 1
      end
    end
 
    if other.hp <= 0 && self.hp > 0
      sleep 2
      print "***************\n決着！！！\n***************\n#{other.name}瀕死、、#{self.name}の勝利！！\n"
    elsif self.hp <= 0 && other.hp > 0
      sleep 2
      print "***************\n決着！！！\n***************\n#{self.name}瀕死、、#{other.name}の勝利！！\n"
    elsif other.hp <= 0 && self.hp <= 0
      sleep 2
      print "***************\n決着！！！\n***************\n#{self.name}、#{other.name}どちらも瀕死、、引き分け！！\n"
    end
  end
 
end
 
pikatyu = Pokemon.new("ピカチュウ", ARGV[0].to_i, ARGV[1].to_i)
zenigame = Pokemon.new("ゼニガメ", ARGV[2].to_i, ARGV[3].to_i)
 
pikatyu.fight(zenigame)