class Item < ApplicationRecord
    belongs_to :user
    has_attached_file \
    :photo,
    styles: { thumb: ['32x32#', 'jpg'] },
    convert_options: {
      all: '-interlace Plane'
    },
    default_url: '/images/default_:style_photo.png'

      def as_json(_opts = {})
    {
      id: id,
      title: title,
      keywords: keywords,
      # item_photo:
      #   {
      #     url: x.photo.url.absolute_url,
      #     name: x.photo_file_name,
      #     id: x.id
      #   }

    }
  end
  
end
