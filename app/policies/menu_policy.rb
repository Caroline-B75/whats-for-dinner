class MenuPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    record.users.include?(user)
  end

  def edit?
    true
  end

  def destroy?
    true
  end
end

