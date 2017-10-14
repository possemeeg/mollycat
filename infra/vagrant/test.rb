servers = ['admin-service-1','hub-server-1','rest-service-1','database']
servers.each_with_index do |box,index|
   puts("public_network", ip: "192.168.1.#{index+20}")
end

