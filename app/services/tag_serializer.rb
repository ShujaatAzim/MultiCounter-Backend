class TagSerializer

  def initialize(tag_object)
    @tag = tag_object
  end

  def to_serialized_json
    options = {
      include: {
        counters: {
          except: [:created_at, :updated_at]
        }
      },
      except: [:created_at, :updated_at]
    }
    @tag.to_json(options)
  end

end
