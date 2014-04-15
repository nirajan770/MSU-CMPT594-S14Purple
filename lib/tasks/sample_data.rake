namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Nirajan Thapa",
                         email: "nirajanthapa@mail.montclair.edu",
                         password: "nirajan",
                         password_confirmation: "nirajan",
                         admin: true)
   end
end