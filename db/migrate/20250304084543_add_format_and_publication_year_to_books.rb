class AddFormatAndPublicationYearToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :format, :string
    add_column :books, :publication_year, :integer
  end
end
