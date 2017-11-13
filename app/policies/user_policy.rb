class UserPolicy < ApplicationPolicy

  def create?
    true
  end

  alias_method :update?, :show?
end
