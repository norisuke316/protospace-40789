# frozen_string_literal: true

class DeviseCreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps null: false
    end

    # add_index :prototypes, :email,                unique: true
    # add_index :prototypes, :reset_password_token, unique: true
    # add_index :prototypes, :confirmation_token,   unique: true
    # add_index :prototypes, :unlock_token,         unique: true
  end
end
