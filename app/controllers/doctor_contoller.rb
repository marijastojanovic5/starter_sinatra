class DoctorController < Sinatra::Base
    set :views, 'app/views/doctors'
    set :method_override, true


    get '/doctors' do 
        @doctors = Doctor.all
        erb :index
    end

    get '/doctors/new' do 
    @doctor=Doctor.new(params)
    erb :new
    end 
    
    
    get '/doctors/:id' do 
        @doctor = Doctor.find_by_id(params[:id])
        erb :show 
    end 

    post '/doctors' do 
        
        @doctor = Doctor.create(params)
        redirect to "/doctors/#{@doctor.id}"

    end 
end