class UrlParser
 attr_accessor :new_url
 def initialize(new_url)
   @new_url = new_url
end

def scheme
   @new_url.split(":")[0]
 end

 def domain
   @new_url.split(":")[1].tr("//", "")
 end

 def port
   port = @new_url.split(":").last.scan(/\d+/).join

   if (port.empty?) && (@new_url.split(":")[0] == "http")
     "80"
   elsif (port.empty?) && (@new_url.split(":")[0] == "https")
     "443"
   else
     port
   end
 end
 def path
   path = @new_url.split("/")[3].split("?")[0]
   if path.empty?
     nil
   else
     path
   end
 end

 def query_string
   @query_string = @new_url.split("?")[1]
   @query_string = @query_string.split("#")[0]
   @query_string = @query_string.split("&")
   @query_string.map! do |param|
     param.split("=")
   end
   @query_string.flatten!
   Hash[*@query_string]
 end

 def fragment_id
   @new_url.split("#")[1]
 end
end
