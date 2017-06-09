json.extract! company, :id, :name, :email_mask, :created_at, :updated_at
json.url company_url(company, format: :json)
json.picture company.picture.nil? ? '' : asset_url('fifa/companies/' + company.picture)
