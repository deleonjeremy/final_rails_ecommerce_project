# frozen_string_literal: true

ActiveAdmin.register Song do
  permit_params :name, :release_date
end
