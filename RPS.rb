i = 0

loop do

  if i >= 1
    puts "あいこで..."
  else
    puts "じゃんけん..."
  end

  puts "0（グー）1（チョキ）2（パー）3（戦わない）"

  player_hand = gets.to_i
  
  puts "ホイ"

  computer_hand = rand(3)
  gestures = ["グー", "チョキ", "パー", "戦わない"]
  
  puts "---------------"

  puts "あなた：#{gestures[player_hand]}を出しました"
  puts "相手：#{gestures[computer_hand]}を出しました"
  
  puts "---------------"

  def janken(player_hand, computer_hand)
  #戻り値はplayer側からみた結果
    if player_hand == computer_hand
      return "あいこ"
    elsif (player_hand == 0 && computer_hand == 1) || (player_hand == 1 && computer_hand == 2) || (player_hand == 2 && computer_hand == 0)
      return "勝ち"
    elsif player_hand == 3
      return "じゃんけん不成立"
    else
      return "負け"
    end
    
  end

  janken_result = janken(player_hand, computer_hand)

  if (janken_result == "勝ち") || (janken_result == "負け")
    
    puts "あっち向いて〜"
    puts "0（上）1（下）2（左）3（右）"
  
    player_direction = gets.to_i

    puts "ホイ"
  
    computer_direction = rand(4)
    gestures = ["上", "下", "左", "右"]

    puts "---------------"
  
    puts "あなた：#{gestures[player_direction]}"
    puts "相手：#{gestures[computer_direction]}"
  
    puts "---------------"
  
    case janken_result
    when "勝ち"
      if player_direction == computer_direction
        puts "あなたの勝ちです"
        break
      else
        puts "もう１度"
        i = 0
      end
    when "負け"
      if player_direction == computer_direction
        puts "あなたの負けです"
        break
      else
        puts "もう１度"
        i = 0
      end
    
    end
    
  else
    i += 1
    next
  end
end
  