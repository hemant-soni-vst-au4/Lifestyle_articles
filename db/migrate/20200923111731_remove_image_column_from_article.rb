class RemoveImageColumnFromArticle < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :image, :string
  end
end
