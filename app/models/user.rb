class User < ApplicationRecord
  COURSE = ['Html',
    'Css',
    'Javascript',
    'Ruby on Rails',
    'Php',
    'Bootstrap'
  ]

  serialize :course, Array
  has_one_attached :image
  # def image_url
  #   Rails.application.routes.url_helpers.url_for(image) if image.attached?
  # end
end
