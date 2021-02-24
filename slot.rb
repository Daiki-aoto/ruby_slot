# スロットアプリ　Ruby課題
# 一回のボタンアクションにより数字がランダムで表示されるプログラムを出力

# 入力をするごとにスロットの値がきまる（１セット３回入力）
# 値が揃った場合はポイントを獲得できる
# スロットを一回行う毎にコインを消費する
# コインがある場合は「スロットを行う」または「やめる」を選択できる
# コインがなくなった場合はスロットゲームを終了とする  

# 初期画面
puts "---------------"
puts "残コイン数:100"
coin = 100
loop do
    
  # 賭けBets
   select = [10,30,50,"やめとく"]

   num1 = rand(9)
   num2 = rand(9)
   num3 = rand(9)
   num4 = rand(9)
   num5 = rand(9)
   num6 = rand(9)
   num7 = rand(9)
   num8 = rand(9)
   num9 = rand(9)
   
  # 入れるコインの枚数
   puts "何コイン賭けますか？"
   puts "0(10コイン),1(30コイン),2(50コイン),3(STOP)"
   putin = gets.to_i
   
   if putin == 0
    puts "#{select[putin]}コイン賭けます"
   elsif putin == 1
    puts "#{select[putin]}コイン賭けます"
   elsif putin == 2
    puts "#{select[putin]}コイン賭けます"
   elsif putin == 3
    puts "あなたの持ちコインは#{coin}です"
    puts "ゲームを終了します"
    break
   end
  
  # コインがない場合　強制終了
  if coin < select[putin]
    puts "betsできません。またのお越しを！"
    break
  end
   
  # ゲームスタート
  puts "エンターを3回押してください！" 
  puts = gets
  puts "|#{num1}|"
  puts "|#{num2}|"
  puts "|#{num3}|"
  puts = gets
  puts "|#{num1}|#{num4}|"
  puts "|#{num2}|#{num5}|"
  puts "|#{num3}|#{num6}|"
  puts = gets
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  
  # ７が揃った場合
  if ( num2 == 7 ) && ( num5 == 7 ) && ( num8 == 7 )
    
    puts "-------------"
    puts "おめでとう！真ん中に7の数字が揃いました！"
    puts "100コイン獲得！"
    coin = coin + 100 - select[putin]
    puts "残りのコイン数：#{coin}"
    
    # 真ん中の数字が揃った場合
  elsif (num2 == num5) && (num5 == num8) 
    
    puts "-------------"
    puts "おめでとう！真ん中が同じ数字になりました！"
    puts "50コイン獲得！"
    coin = coin + 50 - select[putin]
    puts "残りのコイン数：#{coin}"
    
    # 何も揃わなかった場合
  else
    
    puts "-------------"
    puts "残念！もう一回挑戦しましょう！"
    coin = coin - select[putin]
    puts "残りのコイン数：#{coin}"
    
  end
  
end
