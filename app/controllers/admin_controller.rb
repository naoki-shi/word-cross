class AdminController < ApplicationController
    def tickets
        if session[:admin_tickets].present?
            session[:admin_tickets] = nil
            session[:admin_tickets] = "premit_admin_access"
        else
            session[:admin_tickets] = "premit_admin_access"
        end
    end
end
