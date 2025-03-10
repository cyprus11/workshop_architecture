class BooksIndex < Chewy::Index
  index_scope Book

  field :id, :title, :series, :serno, :libid, :size, :filename, :ext, :del, :insno
  field :published_at, :created_at, :updated_at, type: 'date'
end
