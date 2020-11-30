class MenuRecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def switch?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def show?
    record.menu.users.include?(user)
  end

end
