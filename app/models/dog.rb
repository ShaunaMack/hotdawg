class Dog < ApplicationRecord
    enum size: [:tiny_but_mighty, :compact, :regular, :a_bit_extra, :upsize]
    enum gender: [:male, :female, :non_binary]
    enum age: [:puppy, :dog, :oldie_but_a_goldie]

    
end
