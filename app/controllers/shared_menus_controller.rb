class SharedMenusController < ApplicationController

  def index
    @menus = policy_scope(Menu)
    @accesses = Access.where(user: current_user)

    @shared_menus = []

    @accesses.each do | access |
      @shared_menus << access.menu
    end

    @shared_menus = @shared_menus.sort.reverse.first(5)
  end

end
