# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 payment_types = PaymentType.create([{name: 'Cash'}, {name: 'Check'}])
 officers = User.create([{name: 'Chris Rich',         email: 'christopher.rich@eagles.oc.edu',  password: 'president',      password_confirmation: 'president'    , active: true},
                         {name: 'Justin Bullard',     email: 'justin.bullard@eagles.oc.edu',    password: 'vicepresident',  password_confirmation: 'vicepresident', active: true},
                         {name: 'Tyler Wilson',       email: 'tyler.wilson@eagles.oc.edu',      password: 'treasurer',      password_confirmation: 'treasurer'    , active: true},
                         {name: 'Bryan Nix',          email: 'bryan.nix@eagles.oc.edu',         password: 'springsing',     password_confirmation: 'springsing'   , active: true},
                         {name: 'Charlie OHara',      email: 'charles.ohara@eagles.oc.edu',     password: 'secretary',      password_confirmation: 'secretary'    , active: true},
                         {name: 'Athletic Director',  email: 'sergeant-at-arms@agoknights.com', password: 'athletic',       password_confirmation: 'athletic'     , active: true},
                         {name: 'David Lopez',        email: 'david.lopez@eagles.oc.edu',       password: 'chaplain',       password_confirmation: 'chaplain'     , active: true},
                         {name: 'John Gause',         email: 'jonathan.gause@eagles.oc.edu',    password: 'service',        password_confirmation: 'service'      , active: true},
                         {name: 'Drew Binkley',       email: 'drew.binkley@eagles.oc.edu',      password: 'historian',      password_confirmation: 'historian'    , active: true},
                         {name: 'Ryan Hinds',         email: 'ryan.hinds@eagles.oc.edu',        password: 'rushdirector',   password_confirmation: 'rushdirector' , active: true},
                         {name: 'Tommy Winberry',     email: 'tommy.winberry@eagles.oc.edu',    password: 'testing',        password_confirmation: 'testing'      , active: false}
                         ])

offices = Office.create([ {title: 'President',        email: 'king@agoknights.com',             budget: 150, officer_id: 1, duties: "The President is the chief officer and the administrator of all club affairs. He serves as the representative to the university, and presides over both the officer and club meetings. Nominees for this office must have either previously served as an officer, or their nomination must receive majority approval from the current president, vice-president, and chaplain."},
                          {title: 'Vice President',   email: 'queen@agoknihgts.com',            budget: 800, officer_id: 2, duties: "The Vice President is in charge of organizing and coordinating social events, Fall and Spring Banquets, and official club apparel. The Vice President is also responsible for the affairs of the club in the absence of the President."},
                          {title: 'Secretary',        email: 'scribe@agoknights.com',           budget: 200, officer_id: 5, duties: "The Secretary serves as the Editor-in-Chief of the club newsletter, The Knightly News, and is responsible for the distribution of said newsletter. He is also responsible for the publication and distribution of a club directory for the entire year, keeping accurate notes of all club meetings and voting results, and obtaining the club stationary."},
                          {title: 'Treasurer',        email: 'taxcollector@agoknights.com',     budget:   0, officer_id: 3, duties: "The Treasurer is responsible for collecting dues, handling all money transactions, and keeping an accurate record of the club's finances."},
                          {title: 'Chaplain',         email: 'bishop@agoknights.com',           budget: 150, officer_id: 7, duties: "The Chaplain is in charge of all devotionals that the club organizes. The Chaplain is also responsible for the spiritual guidance and personal development of the club and her members."},
                          {title: 'Social Service',   email: 'friar@agoknights.com',            budget: 150, officer_id: 8, duties: "The Social Service Director is responsible for the planning and organizing of all social service events."},
                          {title: 'Athletic Director',email: 'sergeant-at-arms@agoknights.com', budget:  50, officer_id: 6, duties: "The Athletic Director is responsible for organizing and coordinating all athletic events, appointing coaches, and assigning members to leagues. He or his proxy is required to attend all meetings called by the campus Intramural Director."},
                          {title: 'Historian',        email: 'wizard@agoknights.com',           budget: 150, officer_id: 9, duties: "The Historian is responsible for keeping a photographic record of various club activities, producing a year-end video and all alumni relations including Alpha's homecoming events."},
                          {title: 'Rush Director',    email: 'ambassador@agoknights.com',       budget: 800, officer_id: 10, duties: "The Rush/PR Director is responsible for the recruitment of new members each Fall and Spring trimester. He is responsible for organizing and coordinating all Rush and recruitment activities including induction, knighting, the joust, and the feast.  It is recommended that the rush director be an individual who has participated in Fall rush.  He is also responsible for relations with other clubs, including but not limited to Unity for Spring Sing in the Spring."},
                          {title: 'Spring Sing',      email: 'jester@agoknights.com',           budget: 800, officer_id: 4, duties: "The Spring Sing Director is responsible for producing a Spring Sing show. The Director is responsible for all aspects of the show such as costumes, choreography, music, etc."}
                        ])
 charge_types = ChargeType.create([{category: 'Fall Dues',        value: 40, office_id: 3},
                                   {category: 'Spring Dues',      value: 40, office_id: 3},
                                   {category: 'Rush Shirt',       value: 15, office_id: 10},
                                   {category: 'Fall Banquet',     value: 15, office_id: 2},
                                   {category: 'Spring Banquet',   value: 45, office_id: 2},
                                   {category: 'Misc. Tshirt',     value: 5,  office_id: 2},
                                   {category: 'Water Bottle',     value: 6,  office_id: 3},
                                   {category: 'Vinyl Decal',      value: 2,  office_id: 3},
                                   {category: 'Dog tag',          value: 0,  office_id: 1},
                                   {category: 'Spring Sing Dues', value: 25, office_id: 4},
                                   {category: 'Hoodie',           value: 30, office_id: 2},
                                   {category: 'Alpha Mug',        value: 8,  office_id: 2}])
 accounts = Account.create([{name: 'Cash box'}, {name: 'Checking Account'}, {name: 'Paypal'}])


charges = Charge.create([{charge_type_id: 1, user_id: 1, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 2, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 3, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 4, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 5, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 6, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 7, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 8, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 9, override_value: 40, reconciled: false},
                         {charge_type_id: 1, user_id: 10, override_value: 40, reconciled: false},
                         {charge_type_id: 3, user_id: 1, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 2, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 3, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 4, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 5, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 6, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 7, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 8, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 9, override_value: 15, reconciled: false},
                         {charge_type_id: 3, user_id: 10, override_value: 15, reconciled: false}])

payments = Payment.create([{paid_by_user_id: 1, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 2, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 3, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 4, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 5, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 7, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 8, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 9, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"},
                           {paid_by_user_id: 10, collected_by_user_id: 3, amount_paid: 55, notes: "Shirt and Dues"}
                           ])
purchases = Purchase.create([{user_id: 1, purchase_amount: 95.17, office_id: 1, purchase_location: "Amazon.com", note:"Officer Gifts"},
                             {user_id: 2, purchase_amount: 34.00, office_id: 9, purchase_location: "Walmart", note:"Tiki Torch Fluid"},
                             {user_id: 11, purchase_amount: 191.32, office_id: 9, purchase_location: "Slaughterhouse", note: "Whole hog"}
                             ])
transfers = Transfer.create([{officer_user_id: 3, account_id:1, value: 495, note: "Funds to cash box"},
                             {officer_user_id: 6, account_id:3, value: 55, note: "Paypal payment from Henoc"}
                             ])

account_transfers = AccountTransfer.create([{from_account_id:1, to_account_id: 2, amount: 450, note: "Cash box overflowing with C-notes"},
                                             {from_account_id:3, to_account_id: 2, amount: 55, note:"Paypal to checking"}
                                             ])