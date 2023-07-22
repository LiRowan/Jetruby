class Foobar
  def call_foobar(num1, num2)
    if (num1 == 20) || (num2 == 20)
      num1
    else
      num1 + num2
    end
  end
end

# x = Foobar.new
# x.call_foobar(20,9)
# x.call_foobar(1,9)

# puts foobar(2,4)
# puts foobar(20,9)