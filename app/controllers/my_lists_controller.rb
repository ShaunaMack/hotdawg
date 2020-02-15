class MyListsController < ApplicationController
    before_action :authenticate_user!

    def index
        @dogs = current_user.dogs
    end

    def edit
        @my_list = MyList.find(MyList.my_list_id(current_user,params[:id]))
    end

    def update
        @my_list = MyList.find(params[:id])
        if @my_list_item.save
            flash[:notice] = "Updated"
            redirect_to my_list_path
        end
    end


    # def destroy
    #     item_id = BookListItem.book_list_item_id(current_user, params[:id])
    #     BookListItem.destroy(item_id)
    #     flash[:notice] = "Book removed from list"
    #     redirect_to book_list_items_path
    # end


end
