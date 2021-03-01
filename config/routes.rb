Rails.application.routes.draw do

  root to: proc { [404, {}, ["Started"]] }

  # Forest Admin
  mount ForestLiana::Engine => '/forest'

end
