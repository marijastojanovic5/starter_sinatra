class HospitalController < Sinatra::Base

    set :views, 'app/views/hospitals'
    set :method_override, true

    get '/' do 
        erb :about 
    end 
    
    get '/hospitals' do 
        @hospitals = Hospital.all
        erb :index
    end

    get '/hospitals/new' do 
        @hospital=Hospital.new(params)
        erb :new
    end 
    get '/hospitals/:id' do 
        @hospital = Hospital.find_by_id(params[:id])
        erb :show 
    end 
    post '/hospitals' do 
        @hospital = Hospital.create(params)
        redirect to "/hospitals"
    end 
       

end