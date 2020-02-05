# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times do |welcome| 
    Welcome.create!(
        title: "Welcome to Sun City tattoo.",
        subtitle: "Koh Samui s finest Tattoo Studio",
        body: "We follow European standards for hygiene and sterilisation of our equipment and cover all styles that you        may wish for.",
        subbody: "",
        user_id: 1,
        status: ""
      
    )
end

puts "1 Welcome message seed data is created"

1.times do |about| 
    About.create!(
        title: "About Us",
        subtitle: "Koh Samui s finest Tattoo Studio",
        body: "Sun City open its doors in August 2007. You can find Sun City in Montien house soo. A stone throw from Chaweng road and Chaweng beach. We have two artists in the studio that cover all styles both machine and bamboo. ",
        subbody: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
        user_id: 1
    )
end

puts "1 About seed data is created"

# 8.times do |blog| 
#     Blog.create!(
#         title: "Blog Welcome to Sun City tattoo.",
#         subtitle: "Koh Samui s finest Tattoo Studio",
#         body: "We follow European standards for hygiene and sterilisation of our equipment and cover all styles that you        may wish for.",
#         main_image: "https://place-hold.it/700x400",
#         thumb_image: "https://place-hold.it/350x200",
#         status: "Draft",
#         user_id: 1
#     )
# end

# puts "8 Blogs seed data is created"

1.times do |contact| 
    Contact.create!(
        title: "Contact Us",
        address: "156/7 Moo 2, Chaweng, Bo Put,",
        city: "Koh Samui,",
        province: "Surat Thani",
        country: "Thailand",
        postcode: " 84320",
        tel: "077",
        mobile: "084 626 0022",
        email: "Email",
        website: "https://www.suncitytattoo.com",
        facebook: "https://www.facebook.com/kukootattooartist",
        instagram: "https://www.instagram.com/suncitytattoosamui",
        line: "084 626 0022",
        whatsapp: "084 626 0022",
        status: "Published",
        user_id: 1
    )
end

puts "1 Contact address record added"

1.times do |profile| 
    Profile.create!(
        suffix: "Mr.",
        first_name: "Soraphong",
        last_name: "Limchalerm",
        nick_name: "Kukoo",
        gender: "Male",
        age: "Age",
        body: "Kukoo has tattooed since 2008 and specialises in traditional American tattooing and tattoos influenced by        oriental style. He is capable of doing every style that you may ask for big or small.",
        mobile: "084 626 0022",
        email: "Email",
        website: "https://www.suncitytattoo.com",
        facebook: "https://www.facebook.com/kukootattooartist",
        instagram: "https://www.instagram.com/suncitytattoosamui",
        line: "084 626 0022",
        whatsapp: "084 626 0022",
        roles: "The Artist",
        status: "Published",
        user_id: 1
    )
end

puts "1 artist profile record added"

1.times do |profile| 
    Profile.create!(
        suffix: "Suffix",
        first_name: "First Name",
        last_name: "Last Name",
        gender: "Male",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        mobile: "Mobile No.",
        email: "Email",
        website: "Website",
        facebook: "Facebook",
        instagram: "Instagram",
        whatsapp: "whatsapp",
        line: "Line ID",
        roles: "Guest Artist",
        status: "Draft"
    )
end

puts "1 Guest artist profile record added"


