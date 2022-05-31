class ChangeTypeToActivityTypeOfActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :activity_type, :string

    remove_column :activities, :type

  end
end
