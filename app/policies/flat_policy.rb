class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    def show?
      true
    end

    def edit?
      record.user == user
    end

    def update?
      record.user == user
    end

end
