class AddAttachmentToTaxpayers < ActiveRecord::Migration[5.0]
  def change
    add_column :taxpayers, :attachment, :string
  end
end
