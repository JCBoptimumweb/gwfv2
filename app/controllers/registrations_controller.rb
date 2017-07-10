class RegistrationsController < Devise::RegistrationsController

  def create
    super

    if resource.save
      puts params.inspect
      @company = Company.create(name: params[:user][:company])
      resource.update(company_id: @company.id)
      # resource.company_id = @company.id
      # resource.save
    end
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

end