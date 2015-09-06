# class Definitions
#
#   attr_reader(:meaning, :type, :id)
#
#   @@definitions = []
#
#   define_method(:initialize) do |attributes|
#     @meaning = attributes.fetch(:meaning)
#     @type = attributes.fetch(:type)
#     @id = @@definitions.length().+(1)
#   end
#
#   define_singleton_method(:all) do
#    @@definitions
#  end
#
#   define_method(:save) do
#     @@definitions.push(self)
#   end
#
#   define_singleton_method(:clear) do
#     @@definitions = []
#   end
#
#   define_singleton_method(:find) do |id|
#     found_definitions = nil
#     @@definitions.each() do |definitions|
#       if definitions.id().eql?(id)
#         found_definitions = definitions
#       end
#     end
#     found_definitions
#   end
# end
