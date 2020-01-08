Hospital.destroy_all
Doctor.destroy_all



h1 = Hospital.create(name: "Shady Grove Hospital")
doctor1 = Doctor.create(name:"Shannon Nabors",specialty:"Pulmonology",salary: "$320.000,00",hospital_id: 1)
doctor2 = Doctor.create(name:"Skyler Torian",specialty:"Epidemiology",salary: "$420.000,00",hospital_id: 1)
doctor3 = Doctor.create(name:"Jennifer Gomez",specialty:"Neurology",salary: "$270.000,00",hospital_id: 1)
doctor4 = Doctor.create(name:"Samantha Smith",specialty:"Optomology",salary: "$150.000,00",hospital_id: 1)

