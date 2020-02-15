class MyList < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  def self.contains?(current_user, dog)
    return current_user.dogs.where(id: dog.id).length > 0
  end

  def self.create_my_list(current_user, dog)
    if current_user.dogs.where(id: dog.id).length == 0
      current_user.dogs.push(dog)
      current_user.save
    end
  end

  def self.my_list_item(current_user, dog)
    return MyList.where("dog_id = ? AND user_id = ?", dog, current_user.id).first.id
  end
end
