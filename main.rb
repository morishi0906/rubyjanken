def ng_word
    puts "※無効な値が入力されました※"
end

puts " あっちむいてホイゲーム！"
loop {
puts " ルールを見ますか？"
puts " 1.はい　2.いいえ"

loure = gets.chomp

case loure
when "1","１","はい"
    puts " まず、ジャンケンを行います"
    puts " ジャンケンに勝った方は、『あっちむいて・・・』と言います。そして"
    puts " 『ホイ！』という掛け声と同時に上下左右のいずれかの一方を指差し（選択）します"
    puts "※『Enter』キーで次へ"
    textnext = gets.chomp
    puts " ジャンケンに負けた方は、『ホイ！』という掛け声と同時に"
    puts " 上下左右のいずれかの一方へと顔を向けます"
    puts "※『Enter』キーで次へ"
    textnext = gets.chomp
    puts " 勝った人が指した指の方向と、同じ方向を向いてしまったらゲームの負けです"
    puts " ルールはわかりましたか？"
    puts " 1.はい　2.いいえ"
    loure2 = gets.chomp
    case loure2
    when "1","１","はい"
    when "2","２","いいえ"    
        puts " あとはネットで調べてください"
    else
        ng_word
    end
    break
when "2","２","いいえ"
    break
else
    ng_word
end
}

puts " それではゲームを始めます"
puts " ジャンケン・・・ポンッ！"

def janken
jan_result = ""
puts " 1.グーを出す 2.チョキを出す 3.パーを出す"
hand = gets.chomp
enemy_number = rand(3)
    case enemy_number
        when 0
         enemy_hand = "グー"
          enemy_count = 0
        when 1
           enemy_hand = "チョキ"
          enemy_count = 2
        when 2
          enemy_hand = "パー"
           enemy_count = 5
    end
    enemy_number2 = rand(4)
    case enemy_number2
        when 0
           enemy_finger = "👆"
            enemy_face = "( 　￣　 )"
        when 1
          enemy_finger = "👇"
           enemy_face = "( 。_ 。）"
        when 2
            enemy_finger = "👈"
            enemy_face = "(ﾟДﾟ；≡ ） "
        when 3
            enemy_finger = "👉"
            enemy_face = "( ≡；ﾟДﾟ) "   
    end
    
    case hand
        when "1","１","グー","グーを出す"
          my_count = 0
           puts " あなた『グー』　あいて『#{enemy_hand}』"
        when "2","２","チョキ","チョキを出す"
           my_count = 2
           puts " あなた『チョキ』　あいて『#{enemy_hand}』"
        when "3","３","パー","パーを出す"
          my_count = 5
          puts " あなた『パー』　あいて『#{enemy_hand}』"
        else
           ng_word
            puts " ジャンケン・・・ポンッ！"
          janken
    end

result = my_count - enemy_count 
    case result
        when 0    
           puts " あいこで・・・ショッ！"
           janken
        when -2, -3, 5
            puts " あなたの勝ち"
            puts " あっちむいて・・・"
            puts " 1.上へ指を差す 2.下へ指を差す 3.左へ指を差す 4.右へ指を差す"
            jan_result = "win"
        when -5, 2 , 3    
            puts " あなたの負け"
            puts " あっちむいて・・・"
            puts " 1.上を向く 2.下を向く 3.左を向く 4.右を向く"
            jan_result = "lose"
    end

    case jan_result
        when "win"
        jan_win = gets.chomp
        puts " ホイ！"
         case jan_win
            when "1","１","上","上へ指を差す"
                puts " あなた👆"
                puts " あいて#{enemy_face}"
                my_number2 = 0
            when "2","２","下","下へ指を差す"
                puts " あなた👇"
                puts " あいて#{enemy_face}"
                my_number2 = 1
            when "3","３","左","左へ指を差す"
                puts " あなた👈"
                puts " あいて#{enemy_face}"
                my_number2 = 2
            when "4","４","右","右へ指を差す"
                puts " あなた👉"
                puts " あいて#{enemy_face}"
                my_number2 = 3
            else
                ng_word
                puts " ジャンケン・・・ポンッ！"
                janken
        end
   
        when "lose"   
        jan_lose = gets.chomp
        puts " ホイ！"
         case jan_lose
            when "1","１","上","上を向く"
                puts " あなたは『上』を向いた"
                puts " あいて#{enemy_finger}"
                my_number2 = 0
            when "2","２","下","下を向く"
                puts " あなたは『下』を向いた"
                puts " あいて#{enemy_finger}"
                my_number2 = 1
            when "3","３","左","左を向く"
                puts " あなたは『左』を向いた"
                puts " あいて#{enemy_finger}"
                my_number2 = 2
            when "4","４","右","右を向く"
                puts " あなたは『右』を向いた"
                puts " あいて#{enemy_finger}"
                my_number2 = 3
            else 
                ng_word
                puts " ジャンケン・・・ポンッ！"
                janken
        end    
    end
    
    case jan_result
        when "win"
            if my_number2 == enemy_number2
            puts " あなたの勝ちです"
            loop do
            puts " もう一度やりますか？"
            puts " 1.はい　2.いいえ"
            re_try = gets.chomp
                case re_try
                when "1","はい"
                    puts " ジャンケン・・・ポンッ！"
                    janken
                when "2","いいえ"
                    break
                else 
                    ng_word    
                end    
            end
        else 
            puts " ジャンケン・・・ポンッ！"
            janken
        end    
        when "lose"
            if my_number2 == enemy_number2
            puts " あなたの負けです"
            loop do
            puts " もう一度やりますか？"
            puts " 1.はい　2.いいえ"
            re_try = gets.chomp
                case re_try
                when "1","はい"
                    puts " ジャンケン・・・ポンッ！"
                    janken
                when "2","いいえ"
                    break
                else 
                    ng_word    
                end    
            end
        else 
            puts " ジャンケン・・・ポンッ！"
            janken
        end    
    end    
end

janken
