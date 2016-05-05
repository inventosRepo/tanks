require 'socket'
require 'timeout'

class Client
  def initialize host, port
    @host = host
    @port = port
    @server = nil
    @response = nil
  end

  def connect
    @server = TCPSocket.open @host, @port
  end

  def get_response 
    @response = @server.gets
    # exit if data.chomp == "Close"
  end

  def send_request msg
    @server.puts msg + '\n'
  end

end





# server = TCPSocket.open(host, port)

# loop do
# 	while data = gets
# 		server.puts data
# 		puts server.gets
# 		exit if data.chomp == "Close"
# 	end
# end

# client.close


# @host = "10.40.42.99"
# port = 3000