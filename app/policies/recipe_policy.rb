class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def favorite?
    true
  end

  def unfavorite?
    true
  end
end
