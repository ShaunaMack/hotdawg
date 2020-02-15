class Review < ApplicationRecord
  belongs_to :dog
  belongs_to :user

  def self.get_average_rating(dog)
    reviews = Review.select(:rating).where(dog_id: dog.id)
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    rating = "%.2f" % (sum.to_f / reviews.length) if sum > 0
    return rating
  end

end
