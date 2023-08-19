class ChangeMarkForReports < ActiveRecord::Migration[7.0]
  def change
    change_column(:reports, :mark, :string)
  end
end
