class HospitalController < Sinatra::Base

    set :views, 'app/views/hospitals'
    set :method_override, true

    get '/hospitals' do 
        @hospitals = Hospital.all
        erb :index
    end

end