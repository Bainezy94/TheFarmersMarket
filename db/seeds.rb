# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FarmersProfile.destroy_all
Profile.destroy_all
User.destroy_all
Market.destroy_all

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
        email: "admin@test.com", 
        password: "123456",
        role: 2
    },
    {
        email: "ewelin@test.com", 
        password: "123456",
        role: 1
    }, 
    {
        email: "dave@test.com", 
        password: "123456",
        role: 1
    },
    {
        email: "jo@test.com", 
        password: "123456",
        role: 0
    },
    {
        email: "pete@test.com", 
        password: "123456",
        role: 0
    }
])

p "Created #{User.count} users."

Profile.create([
    {
        name: "Admin", 
        phone_number: "9589 0748",
        avatar: "https://i.pinimg.com/564x/67/5f/39/675f396443d2d193c5e0c03df43be7a1.jpg",
        user_id: User.first.id
    },
    {
        name: "John McIntosh", 
        phone_number: "0407 123 645",
        avatar: "https://i.pinimg.com/564x/0f/51/cb/0f51cbbd9bb73f91dc9220cb2fd1844f.jpg",
        user_id: User.second.id
    },
    {
        name: "Asher Michaels", 
        phone_number: "0415 688 721", 
        avatar: "https://i.pinimg.com/564x/5b/c2/6d/5bc26d1756dda1fe06c113876f492aca.jpg",
        user_id: User.third.id
    },
    {
        name: "Jo-Bob Smith", 
        phone_number: "0402 123 336", 
        avatar: "https://i.pinimg.com/564x/a6/44/a7/a644a7051d9ba661222e2b413e7d3b71.jpg",
        user_id: User.fourth.id
    },
    {
        name: "Dave Gumboots", 
        phone_number: "0402 123 336", 
        avatar: "https://i.pinimg.com/564x/3d/37/26/3d3726d799c1c2b2438411fa184c5d76.jpg",
        user_id: User.fifth.id
    }
])

p "Created #{Profile.count} profiles."

FarmersProfile.create([
    {
        market_id: Market.second.id, 
        profile_id: Profile.second.id, 
        bio: "Freshest herbs in all of Sydney!", 
        stall_name: "Farmer John's Herby Herbs", 
        images: "https://i.pinimg.com/564x/7c/9c/f6/7c9cf6c5eb3f2d2e019180da78eed296.jpg"
    },
    {
        market_id: Market.third.id, 
        profile_id: Profile.third.id, 
        bio: "No Berries are as Juicy and plump as ours!", 
        stall_name: "~ Best Berries ~", 
        images: "https://i.pinimg.com/564x/7c/9c/f6/7c9cf6c5eb3f2d2e019180da78eed296.jpg"
    },
    {
        market_id: Market.fourth.id, 
        profile_id: Profile.fourth.id, 
        bio: "Apples, oranges, mandarins! Everything you need for a great fruit platter!", 
        stall_name: "Fruity Fruits!", 
        images: "https://i.pinimg.com/564x/7c/9c/f6/7c9cf6c5eb3f2d2e019180da78eed296.jpg"
    },
    {
        market_id: Market.fifth.id, 
        profile_id: Profile.fifth.id, 
        bio: "Get your vitamin C shots here! Everything you need to live healthy!", 
        stall_name: "Vitamin Fresh!", 
        images: "https://i.pinimg.com/564x/7c/9c/f6/7c9cf6c5eb3f2d2e019180da78eed296.jpg"
    }
])

p "Created #{FarmersProfile.count} farmers."

Product.create([
    {
        name: "Parsley",
        description: "The freshest herbs this side of the bridge",
        price: "2",
        picked_date: "",
        active: true,
        amount_available: 45,
        unit: "bushel",
        farmers_profile_id: FarmersProfile.first.id
    },
    {
        name: "Basil",
        description: "Sweet basil, freshy picked the morning you buy them",
        price: "3.50",
        picked_date: "",
        active: true,
        amount_available: 50,
        unit: "bushel",
        farmers_profile_id: FarmersProfile.first.id
    },
    {
        name: "Thyme",
        description: "Great in salads",
        price: "2",
        picked_date: "",
        active: true,
        amount_available: 60,
        unit: "bushel",
        farmers_profile_id: FarmersProfile.first.id
    },
    {
        name: "Rosemary",
        description: "Sweet smelling rosemary, great for winter roasts",
        price: "1.50",
        picked_date: "",
        active: true,
        amount_available: 65,
        unit: "bushel",
        farmers_profile_id: FarmersProfile.first.id
    },
    {
        name: "Strawberries",
        description: "Huge and juicy",
        price: "5",
        picked_date: "",
        active: true,
        amount_available: 45,
        unit: "punnet",
        farmers_profile_id: FarmersProfile.second.id
    },
    {
        name: "Blueberries",
        description: "Plump and juicy",
        price: "6",
        picked_date: "",
        active: true,
        amount_available: 27,
        unit: "punnet",
        farmers_profile_id: FarmersProfile.second.id
    },
    {
        name: "Raspberries",
        description: "Plump, ripe and great to eat",
        price: "4",
        picked_date: "",
        active: true,
        amount_available: 40,
        unit: "punnet",
        farmers_profile_id: FarmersProfile.second.id
    },
    {
        name: "Mulberries",
        description: "Dripping with juice",
        price: "2.50",
        picked_date: "",
        active: true,
        amount_available: 45,
        unit: "kg",
        farmers_profile_id: FarmersProfile.second.id
    },
    {
        name: "Apples",
        description: "Crisp and juicy",
        price: "2.50",
        picked_date: "",
        active: true,
        amount_available: 35,
        unit: "kg",
        farmers_profile_id: FarmersProfile.third.id
    },
    {
        name: "Oranges",
        description: "Great to eat or juice",
        price: "2.50",
        picked_date: "",
        active: true,
        amount_available: 45,
        unit: "kg",
        farmers_profile_id: FarmersProfile.third.id
    },
    {
        name: "Bananas",
        description: "Boneless bananas fresh each market",
        price: "2",
        picked_date: "",
        active: true,
        amount_available: 45,
        unit: "kg",
        farmers_profile_id: FarmersProfile.third.id
    },
    {
        name: "Mandarins",
        description: "Juiciest mandarins around",
        price: "2.50",
        picked_date: "",
        active: true,
        amount_available: 50,
        unit: "kg",
        farmers_profile_id: FarmersProfile.third.id
    },
    {
        name: "Lemons",
        description: "juicy and yellow, great to fend off those nasty colds in the winter months",
        price: "3",
        picked_date: "",
        active: true,
        amount_available: 30,
        unit: "kg",
        farmers_profile_id: FarmersProfile.third.id
    },
    {
        name: "Lemons",
        description: "Great for your health",
        price: "2.50",
        picked_date: "",
        active: true,
        amount_available: 30,
        unit: "kg",
        farmers_profile_id: FarmersProfile.fourth.id
    },
    {
        name: "Limes",
        description: "Great for juicing and cooking",
        price: "1",
        picked_date: "",
        active: true,
        amount_available: 45,
        unit: "each",
        farmers_profile_id: FarmersProfile.fourth.id
    }
])

p "Created #{Product.count} products."