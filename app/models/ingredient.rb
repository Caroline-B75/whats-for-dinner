class Ingredient < ApplicationRecord
  CATEGORY = ["Produits laitiers", "Poisson", "Fruits et Légumes", "Boulangerie", "Boucherie", "Cave", "Epicerie sucrée",
              "Bio", "Hygiène", "Boisson", "Frais", "Condiment et Assaisonnement", "Epicerie sucrée"]
  UNIT = ["mL", "g", "feuille(s)", "entier", "cuillère(s) à café", "cuillère(s) à soupe", "pincée(s)", "rouleau(x)", "tranche(s)"]
  has_many :preparations
  has_many :recipes, through: :preparations

  validates :name, presence: true
  validates :unit, presence: true
  validates_inclusion_of :category, in: CATEGORY, presence: true
  validates_inclusion_of :unit, in: UNIT, presence: true
end
