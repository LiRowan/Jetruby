BALANCE_FILE = "balance.txt"
START_BALANCE = 100.0

def read_balance
  if File.exist?(BALANCE_FILE)
    File.read(BALANCE_FILE).to_f
  else
    START_BALANCE
  end
end

def write_balance(balance)
  File.write(BALANCE_FILE, balance)
end

def valid_amount?(amount)
  amount.to_f > 0
end

def deposit(balance)
  puts "Введите сумму для депозита:"
  amount = gets.chomp
  if valid_amount?(amount)
    balance += amount.to_f
    puts "Новый баланс: #{balance}"
  else
    puts "Неверная сумма для депозита"
  end
  balance
end

def withdraw(balance)
  puts "Введите сумму для вывода:"
  amount = gets.chomp
  if valid_amount?(amount) && amount.to_f <= balance
    balance -= amount.to_f
    puts "Новый баланс: #{balance}"
  else
    puts "Неверная сумма для вывода"
  end
  balance
end

balance = read_balance

loop do
  puts "Выберите операцию: [D] Депозит, [W] Вывод, [B] Баланс, [Q] Выход"
  choice = gets.chomp.downcase

  case choice
  when "d"
    balance = deposit(balance)
  when "w"
    balance = withdraw(balance)
  when "b"
    puts "Текущий баланс: #{balance}"
  when "q"
    write_balance(balance)
    break
  else
    puts "Неверная команда"
  end
end