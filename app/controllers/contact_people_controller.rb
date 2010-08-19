class ContactPeopleController < ApplicationController
  inherit_resources
  belongs_to :client
end
