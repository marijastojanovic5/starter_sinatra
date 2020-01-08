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
    get '/doctors/:id/edit' do 
        @doctor = Doctor.find_by_id(params[:id])
        erb :edit
    end 

    post '/doctors' do 
        
        @doctor = Doctor.create(params)
        redirect to "/doctors/#{@doctor.id}"

    end 

    patch '/doctors/:id' do 
        @doctor = Doctor.find(params[:id])
    
       @doctor.update(params[:doctor])
       redirect to "/doctors/#{@doctor.id}"
    end 

    delete '/doctors/:id' do 
        @doctor = Doctor.find_by_id(params[:id])
        @doctor.delete 
        redirect to "/doctors"

    end 
end