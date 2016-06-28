class SparqlQuery
  
   require 'rubygems'
    require 'sparql/client'
    require 'sparql'	
    require 'linkeddata' 
   
  
  def createQueryList

    @query1 = "
	  PREFIX ontology: <http://dbpedia.org/ontology/>
	  PREFIX dbp: <http://dbpedia.org/property/>
	  PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#label>
	  SELECT ?abstract Where{	
		  ?beard rdf:type <http://dbpedia.org/ontology/AnatomicalStructure> .
		  ?beard dct:subject <http://dbpedia.org/resource/Category:Facial_hair> .
		  ?beard dbp:name 'Beard'@en .
		  ?beard ontology:abstract ?abstract .
		  FILTER (Lang(?abstract)='de')
		  }
	  "
    @query2 = "
	  PREFIX ontology: <http://dbpedia.org/ontology/>
	  PREFIX dbp: <http://dbpedia.org/property/>
	  PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#label>
	  SELECT ?abstract Where{	
		  ?beard rdf:type <http://dbpedia.org/ontology/AnatomicalStructure> .
		  ?beard dct:subject <http://dbpedia.org/resource/Category:Facial_hair> .
		  ?beard dbp:name 'Beard'@en .
		  ?beard ontology:abstract ?abstract .
		  FILTER (Lang(?abstract)='en')
		  }
    
    "

    
     queries = Array.new(2)
     queries[0] = @query1
     queries[1] = @query2   
     
     queries
  end  
  
  def chooseQuery(queryList)
     
    random = 1 + rand(queryList.length)
    queryList[random-1] 	
  end
  

  def runQueryAgainstDBPedia(query)
      
      client = SPARQL::Client.new("http://dbpedia.org/sparql")
  
      result = client.query(query)
 
      result = result.to_html
      result = result.html_safe
      result

  end




  if __FILE__ == $0
    @mg = SparqlQueryGenerator.new    
    list = @mg.createQueryList
    query = @mg.chooseQuery(list)
    #@mg.runQueryAgainstDBPedia(query)
    
  end

end


