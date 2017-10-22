servers = [
  {name:'database', ip:'192.168.1.20'},
  {name:'activemq', ip:'192.168.1.21'}
]
servers.each_with_index do |box,index|
   puts("box #{box[:name]}, ip #{box[:ip]}")
end


