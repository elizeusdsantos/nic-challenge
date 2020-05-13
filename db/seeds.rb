# ruby encoding: utf-8
elephant = Conglomerate.create(name: "Elephant")
notElephant = Conglomerate.create(name: "Not an Elephant") 

companies = [
  [ "one",   "companyone",   11,  "-25.4296231,-49.2786491", elephant   ],
  [ "two",   "companytwo",   12,  "-25.4433107,-49.2557159", notElephant],
  [ "three", "companythree", 13,  "-25.4421094,-49.2759719", notElephant],
  [ "four",  "companyfour",  14,  "-25.4329977,-49.2622383", elephant   ],
  [ "five",  "companyfive",  15,  "-25.4200076,-49.2249805", notElephant],
  [ "six",   "companysix",   16,  "-25.4283666,-49.2755325", notElephant],
  [ "seven", "companyseven", 17,  "-25.4197427,-49.2718847", notElephant],
  [ "eight", "companyeight", 18,  "-25.4246915,-49.2778825", notElephant],
  [ "nine",  "companynine",  19,  "-25.4268874,-49.2401082", elephant   ],
  [ "ten",   "companyten",   110, "-25.4207247,-49.2321259", notElephant]
]


Apartment::Tenant.switch(Apartment::Tenant.default_tenant) do
    companies.each do |name, subdomain, employees_number, location, conglomerate|
        Company.create( name: name, subdomain: subdomain,  employees_number: employees_number, location: location, conglomerate: conglomerate)
    end
end