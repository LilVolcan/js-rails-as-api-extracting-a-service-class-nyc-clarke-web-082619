class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
    end 

    # def to_serialized_json(:include => {
    #     :bird => {:only => [:name, :species]},
    #     :location => {:only => [:latitude, :longitude]}
    #   }, :except => [:updated_at])
    # end 

    # below is the same as above, just cleaned up version
    def to_serialized_json
        options = {
            include: {
            bird: {
                only: [:name, :species]
            },
            location: {
                only: [:latitude, :longitude]
            }
            },
            except: [:updated_at],
        }
        @sighting.to_json(options)
    end

end
