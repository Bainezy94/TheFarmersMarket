# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Market.destroy_all
# # User.destroy_all
# Profile.destroy_all
# FarmersProfile.destroy_all

Market.create([
    { 
        name: "Tramsheds Growers Markets", 
        location: "1 Dalgal Way, Forest Lodge NSW 2037", 
        bio: "Sydney, meet the newest market on the block and trust us, you’re going to want to get yourself here stat. FYI, this one is super spesh because they’ve teamed up with Bodega 1904 to put together a market on a whole other level.", 
        opening_hours: "Every Sunday, 8am-2pm"
    }, 
    { 
        name: "Orange Grove Organic Food Markets", 
        location: "Perry St, Lilyfield NSW 2040", 
        bio: "From freshly-grown tomatoes to free-range steaks, you’ll find us here on most Saturdays (it would be every Saturday if we could but we swear we have other things to do…).", 
        opening_hours: "Saturdays, 8am-1pm"
    }, 
    {
        name: "Sydney Vegan Market", 
        location: "100 Marrickville Rd, Marrickville NSW 2204", 
        bio: "Shout out to all our vegan gods and goddesses out there. Don’t drop your avos but boy do we have news for you. This monthly market is filled with cruelty-free goods just for you, and non-vegans, we won’t be surprised if you come out of there as the newest member of the club.", 
        opening_hours: "Third Sunday of every month, 9am-4pm"
    }, 
    {
        name: "Parramatta Farmers' Market", 
        location: "Church St, Parramatta NSW 2150", 
        bio: "If you’re a little extra and you know it, you HAVE to hit up the Parramatta Farmers’ Markets to try their coconut coffee with coconut oil extract and fresh sugar cane juice. We know, aaamazing, right? ", 
        opening_hours: "Fridays 8:30am-2:30pm"
    }, 
    {
        name: "Castle Hill Farmers' & Fine Food Markets", 
        location: "Showground Rd, Castle Hill NSW 2154", 
        bio: "If you’re from The Hills district, there’s a good chance you’ve checked out these farmers’ markets before. There are over 80 stalls (yep) with just about everything your fridge needs:, cheese, cakes, honey, jams, fish, duck, veggies and gluten-free goodies. Go all out, obviously.", 
        opening_hours: "Second and fourth Saturday of the month, 8am-12pm"
    }, 
    {
        name: "Camden Fresh Produce Markets", 
        location: "40 Exeter St, Camden NSW 2570", 
        bio: "Hit up the Camden Produce Markets for eats set against the picturesque backdrop of the Macarthur Region. You’ll score everything from locally grown fruit, veg and flowers, to meat, eggs, artisan products and homemade baked goods. Is there anything better? The short answer is no, there’s not.", 
        opening_hours: "Every Saturday, 7am—12pm"
    }
])

p "Created #{Market.count} markets."

User.create([
    {
        email: "ewelin@test.com", 
        encrypted_password: "123456"
    }, 
    {
        email: "dave@test.com", 
        encrypted_password: "123456"
    },
    {
        email: "jo@test.com", 
        encrypted_password: "123456"
    },
    {
        email: "pete@test.com", 
        encrypted_password: "123456"
    }
])

p "Created #{User.count} users."

Profile.create([
    {
        name: "Jo Bloggs", 
        phone_number: "9589 0748"
    },
    {
        name: "John McIntosh", 
        phone_number: "0407 123 645"
    },
    {
        name: "Asher Michaels", 
        phone_number: "0415 688 721", 
        avatar: "https://www.pinterest.com.au/pin/301107925086810349/"
    },
    {
        name: "Jo", 
        phone_number: "0402 123 336", 
        avatar: "https://www.pinterest.com.au/pin/301107925086810342/"
    }
])

p "Created #{Profile.count} profiles."

FarmersProfile.create([
    {
        market_id: Market.first.id, 
        profile_id: Profile.second.id, 
        bio: "We have the freshest lettuce around, picked fresh the morning of the markets", 
        stall_name: "Farmer Jo's Big Farm", 
        images: "http://kitchenconfidante.com/simple-sundays-scenes-from-the-ferry-plaza-farmers-market"
    },
    {
        market_id: Market.first.id, 
        profile_id: Profile.first.id, 
        bio: "Best eggs in all of Sydney!", 
        stall_name: "Farmer John's Chooks", 
        images: "https://www.pinterest.com.au/pin/301107925086810233/"
    }
])

p "Created #{FarmersProfile.count} farmers."