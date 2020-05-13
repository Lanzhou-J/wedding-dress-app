module DressesHelper
  def picture_for(dress)
    if dress.picture.present?
      dress.picture
    else
      'homepage_img.JPG'
    end
  end
end
