while true
    text = "数字入力してね\n1: グー\n2: パー\n3: チョキ"
    puts text
    hand = gets.to_i - 1
    if not hand.between?(0,2)
        puts "1~3の数字を入力してください"
        next
    end
    
    random = Random.new
    count = random.rand(0..2)
    
    decision = (hand - count + 3) % 3
    
    case decision
    
    when 0
        puts "あいこね"
        next
    when 1
        puts "あなたの勝ち"
        break
        
    when 2
        puts "あなたの負け"
        break
    end
    
end


