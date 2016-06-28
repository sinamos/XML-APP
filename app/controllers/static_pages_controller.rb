class StaticPagesController < ApplicationController

	require 'BaseXClient.rb'
  require 'SparqlQuery.rb'

	def about	
	end

	def help	
	end
  
  def home
  		
  end

  def news
  	# create session
  	session = BaseXClient::Session.new("localhost", 1984, "admin", "admin")

    @person=[1]
    @mg = SparqlQuery.new  
    list = @mg.createQueryList
    dbp_query = @mg.chooseQuery(list)
    @result = @mg.runQueryAgainstDBPedia(dbp_query)

  	begin
     	# create query instance
  		@input = "//obj[position()<6]/*/a8000/text()"

  		session.execute("open baerte")
  		@query = session.query(@input)
  		# close query instance
  		#print query.close()
  		
  		rescue Exception => e
  			# print exception
 				puts e
 			end

 		# close session
 		# session.close
  		
 		end

  	def contact
  	end

end
