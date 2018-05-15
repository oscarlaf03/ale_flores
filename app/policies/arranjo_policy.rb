class ArranjoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show
    true
  end

  def create?
    user.site_owner
  end

  def update?
    user.site_owner
  end

  def destroy?
    user.site_owner
  end

end
