class Travelog

  @@places =[]

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:place) do
    @place
  end

  define_singleton_method(:all) do
    @@places
  end

  define_method(:store_place) do
    @@places.push(self)
  end

  define_singleton_method(:clear) do
    @@places = []
  end
end
