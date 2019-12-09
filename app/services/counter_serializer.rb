class CounterSerializer

  def initialize(counter_object)
    @counter = counter_object
  end

  def to_serialized_json
    options = {
      include: {
        tags: {
          except: [:created_at, :updated_at]
        }
      },
      except: [:created_at, :updated_at]
    }
    @counter.to_json(options)
  end

end
