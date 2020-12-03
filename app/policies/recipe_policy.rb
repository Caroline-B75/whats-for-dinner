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

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def show?
    true
  end
end
