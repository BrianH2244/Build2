class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can [:show, :edit, :update, :destroy], User, :id => user.id
    end
  end
end
