class Dog < ApplicationRecord
    enum size: [:tiny_but_mighty, :pint_sized, :regular, :a_bit_extra, :upsize]
    enum gender: [:male, :female, :non_binary]
    enum age: [:puppy, :dog, :oldie_but_a_goldie]

    has_one_attached :picture
    has_many :my_lists
    has_many :reviews
    
end
