module Slugifiable
  def slug
    self.name.parameterize
  end

  def find_by_slug(slug)
    self.all.find{|song| song.slug == slug}
  end
end