# require('rspec')
# require('definitions')
#
# describe(Definitions) do
#   before() do
#     Definitions.clear()
#   end
#
#   describe('#meaning') do
#     it("returns definitions of the word") do
#       test_definitions = Definitions.new({:meaning =>"it is a vehicle", :type => "a new type of definition", :id => "1"})
#       expect(test_definitions.meaning()).to(eq("it is a vehicle"))
#     end
#   end
#
#   describe('#type') do
#     it("return a new definiton") do
#       test_definitions = Definitions.new({:meaning =>"it is a vehicle", :type => "a new type of definition", :id => "1"})
#       expect(test_definitions.type()).to(eq("a new type of definiton"))
#     end
#   end
#
#   describe('#id') do
#     it("returns a definition with a id number") do
#       test_definitions = Definitions.new({:meaning =>"it is a vehicle", :type => "a new type of definition", :id => "1"})
#       expect(test_definitions.id()).to(eq(1))
#     end
#   end
#
#   describe('#save') do
#     it("adds a definiton to the array.") do
#       test_definitions = Definitions.new({:meaning =>"it is a vehicle", :type => "a new type of definition", :id => "1"})
#       test_definitions.save()
#       expect(Definitions.all()).to(eq([test_definitions]))
#     end
#   end
#
#   describe('.all') do
#     it("is empty at first") do
#       expect(Definitions.all()).to(eq([]))
#     end
#   end
#
#   describe('.clear') do
#     it("empties out all of the definition") do
#       Definitions.new({:meaning =>"it is a vehicle", :type => "a new type of definition", :id => "1"}).save()
#       Definitions.clear()
#       expect(Definitions.all()).to(eq([]))
#     end
#   end
#
#   describe(".find") do
#     it("returns  the definiton by its id number") do
#       test_definitions = Definitions.new({:meaning =>"it is a vehicle", :type => "a new type of definition", :id => "1"})
#       test_definitions.save()
#       test_definitions2 = Definitions.new({:meaning =>"it is a cup", :type => "a type of definition", :id => "2"})
#       test_definitions2.save()
#       expect(Definitions.find(test_definitions.id())).to(eq(test_phonebook))
#     end
#   end
# end
