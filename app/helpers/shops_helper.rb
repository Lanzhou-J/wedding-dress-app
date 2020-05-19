module ShopsHelper
  def shoppicture_for(shop)
    if shop.picture.present?
      shop.picture
    else
      'shop1.jpeg'
    end
  end
end
