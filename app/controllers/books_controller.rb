class BooksController < ApplicationController
  def index
    books = BooksIndex.order(:created_at).limit(per_page).offset(page * per_page).records

    render json: serialize(books, with: BookSerializer)
  end
end
