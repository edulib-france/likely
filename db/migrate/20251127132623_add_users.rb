class AddUsers < ActiveRecord::Migration[8.0]
  def change
    [
      "Emilie",
      "Cédric", 
      "Rayane",
      "Maxime",
      "Stéphane", 
      "Yaya", 
      "Félix", 
      "Nicolas",
      "Mathieu",
      "Bastian",
      "Coraline",
      "Wiame",
      "Jeanne",
      "Marie",
      "Cécile",
      "Marion",
      "Sophie",
      "Avril",
      "Laure"
    ].each do |name|
      User.create!(name: name)
    end
  end
end
