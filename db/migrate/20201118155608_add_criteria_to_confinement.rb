class AddCriteriaToConfinement < ActiveRecord::Migration[6.0]
  def change
    add_column :confinements, :first_criteria, :integer
    add_column :confinements, :second_criteria, :integer
    add_column :confinements, :third_criteria, :integer
  end
end
