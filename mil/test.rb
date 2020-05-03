class Foo
  class TestClass
    def initialize(test)
      @test = test
    end
  
    def testpoint
      puts "#{@test} 点"
    end
  end
  
  class TestClass2 <TestClass
    def testscore
      @test *= 3
      puts "#{@test} スコア"
    end
  end
end