# # encoding: utf-8

#------------------------------------------------------------------------------#

# # MyModule.constants.select {|c| Class === MyModule.const_get(c)}

# require_relative '../nox_notifier'

# module Oggler
#   module Ogglers

#     class Nox < Base

#       class << self
#         def valid?
#           raise Exceptions::FeatureInvalid, 'Nox cannot be setup in Production' if ENV['RAILS_ENV'] == 'production'
#         end

#         def commands
#           [ Proc.new { ::NoxNotifier.new(current_state).process } ]
#         end
#       end
#     end

#     class NewCustomerRooward < Base; end
#     class HeaderCampaign < Base; end
#     class PropertyDetailsRecommendation < Base; end
#     class CachedRegionResolution < Base; end
#     class PropertyDealsExampleDates < Base; end
#     class DomesticTriplePointsSale < Base; end
#     class DomesticDoublePointsSale < Base; end
#     class Shortlist < Base; end
#     class CancelRebook < Base; end
#     class ExtranetNav < Base; end
#     class ChannelManagerApiExtraLogging < Base; end

#     module Bookings
#       class Offline < Base; end
#       class Message < Base; end
#     end

#     module EAN
#       class EAN < Base; end
#       class Jetstar < Base; end
#       class Modifications < Base; end
#       class ConcurrentModifications < Base; end
#       class HotelFees < Base; end
#     end

#     module Pegasus
#       class Caching < Base; end
#       class PerformSearch < Base; end
#       class BookingModifications < Base; end
#       class BookingCancellations < Base; end
#       class NewRepositoryAdapter < Base; end
#       class SearchUnparsedResponse < Base; end
#     end
#   end
# end
