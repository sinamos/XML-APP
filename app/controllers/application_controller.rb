class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
  	render text: "Hello, world!"
  end

   xml_doc = File.read(Rails.root + 'public/xml/DIP-UBLeipzig-publizierte20150318.xml')
   obj = Nokogiri::XML(xml_doc)

end
