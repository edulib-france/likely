class PopulateUsers < ActiveRecord::Migration[8.0]
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
      User.create(name:)
    end

    User.create(name: "Animateur", admin: true)
  end
end
