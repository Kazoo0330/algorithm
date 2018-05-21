require 'rubycards'
include RubyCards

# Handインスタンスの生成
hand = Hand.new

# Deckインスタンスの生成
deck = Deck.new
puts "======before shuffle======"
puts deck

# デッキのシャッフル
deck = deck.shuffle!
puts "======after shuffle======"
puts deck

# デッキからカードを10枚引く
hand = hand.draw(deck,10)
puts "======after draw======"
puts hand

# handオブジェクトを配列に型変換
target = hand.to_a

def sort(hand_array)
    return hand_array if (hand_array.length) < 2
    axis = hand_array.shift
    smallers = []
    biggers = []
    hand_array.each do |x|
        if x < axis
            smallers << x
        else
            biggers << x
        end
    end
    sort(smallers) + [axis] + sort(biggers)
end

target = sort(target)

# FIXME （targetを昇順にソートしてください）

# hand = hand.sort!は使用しないでください。
# 並び替えた配列でHandオブジェクトのインスタンスを作成
hand = Hand.new(target)
puts "======after sort======"
puts hand
