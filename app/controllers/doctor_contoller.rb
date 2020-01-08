class DoctorController < Sinatra::Base
    set :views, 'app/views/doctors'
    set :method_override, true

end