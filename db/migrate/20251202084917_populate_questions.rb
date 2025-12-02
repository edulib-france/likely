class PopulateQuestions < ActiveRecord::Migration[8.0]
  def change
    [
      "Qui est le plus susceptible de commencer à écouter de la musique de Noël en octobre ?",
      "Qui est le plus susceptible de préparer des cookies pour tout le monde ?",
      "Qui est le plus susceptible d’offrir le meilleur cadeau pour le Père Noël Secret ?",
      "Qui est le plus susceptible de connaître tous les potins d'Edulib ?",
      "Qui est le plus disposé à aider à résoudre un problème ?",
      "Qui est le plus susceptible d'oublier tout le temps ses affaires ?",
      "Qui esl le plus susceptible d'avoir la playlist qui fait danser TOUT le monde ?",
      "Qui est le plus susceptible d’arriver en retard ?",
      "Qui est le meilleur.e au ping pong & Bowling ?",
      "Qui est le plus susceptible de garder un fond virtuel d’une plage trop cliché… même en plein hiver ?",
      "Qui est le plus AVRIL ?",
      "Qui est le plus susceptible de passer une réunion entière sans parler ?",
      "Qui est le plus gourmand ?",
      "Qui est le plus bavard ?",
      "Qui va le plus à la salle de sport ?",
      "Qui est le plus stylé ?",
      "Qui est le plus patient avec Florence Comblat ?",
      "Qui est le meilleur ami de Jean Marc Lemaître ?Qui est un as du volant ?",
      "Qui a le bureau le mieux rangé ?",
      "Qui a le bureau avec la décoration la plus inspirante ?"
    ].each do |content|
      Question.create(content:)
    end
  end
end
