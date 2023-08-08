class CashMachine
  def initialize
    if File.exist?('balance.txt')
      balance = File.read('balance.txt').to_f
      @balance = balance
    else
      file = File.open('balance.txt', 'w')
      file.write('100.0')
      balance = File.read('balance.txt').to_f
      @balance = balance
    end
  end

  def choice
    loop do
      p "Что вы хотите сделать? Внести деньги - D, Вывести деньги - W, Проверить баланс - B, Выйти - Q"
      choice = gets.chomp.downcase

      case choice
      when "d"
        deposit
      when "w"
        withdraw
      when "b"
        get_balance
      when "q"
        quit
        break
      else 
        p "Нет такой команды"
      end
    end
  end

  def deposit
    p "Введите сумму, которую необходимо внести"
    user_deposit = gets.to_f
    if user_deposit > 0      
      @balance = @balance + user_deposit
      p "Баланс был изменен. Новый баланс: #{@balance}"
    else
      p "Нельзя положить на счет отрицательное количество денег"
    end
  end

  def withdraw
    p "Сколько денег вы хотите снять?"
    user_withdraw = gets.to_f
    if user_withdraw <= @balance
      @balance = @balance - user_withdraw
      p "Баланс был изменен. Новый баланс: #{@balance}"
    else
      p "Вы хотите снять больше денег чем у вас есть"
    end
  end

  def get_balance
    p "Текущий баланс: #{@balance}"
  end

  def quit
    file = File.open('balance.txt', 'w')
    file.write(@balance)
  end 
end  

cash_machine = CashMachine.new
cash_machine.choice