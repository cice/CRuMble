class Client::ContactPerson < ActiveRecord::Base
  belongs_to :client
end
