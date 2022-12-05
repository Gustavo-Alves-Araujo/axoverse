      # frozen_string_literal: true

      class HomeController < ApplicationController
        before_action :set_view_variables, only: %i[index]

        def index; end

        def profile; end

        def set_view_variables
          return unless current_user

          @users_to_chat_with = User.all_except_contacts_of(current_user)
          @contacts = current_user.contacts
          @rooms = current_user.rooms
        end

        def teste
          @teste = 'teste'
        end
      end
