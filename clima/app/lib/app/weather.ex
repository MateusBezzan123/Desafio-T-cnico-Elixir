defmodule App.Weather do 
   def get_appid() do
   "d88216ba6311e9de4e5b05c60e911d8c"
   end

   def get_endpoint(location) do
   location = URI.encode(location)
   "http://api.openweathermap.org/data/2.5/weather?q=#{location}
&appid=#{get_appid()}"
end
end