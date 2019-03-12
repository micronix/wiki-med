class FacilityProcedure < ActiveRecord::Base
    belongs_to :procedures
    belongs_to :facility
end
