class MyMember
  @name = ""
  def setName(str)
    @name = str
  end
  def getName
    return @name
  end
end

class MyMember2 < MyMember
  @addr = ""
  def setAddr(str)
    @addr = str
  end
  def getAddr
    return @addr
  end
end