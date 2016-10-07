module Api::V1
  class CredentialsController < ApiController
    doorkeeper_for :all

    respond_to :json

    def me
      c = current_resource_owner
      response = {id: c.id, email: c.mail}
      respond_with response
    end

  end
end
