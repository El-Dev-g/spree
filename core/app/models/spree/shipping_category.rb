module Spree
  class ShippingCategory < Spree.base_class
    DIGITAL_NAME = 'Digital'

    include Spree::UniqueName

    with_options inverse_of: :shipping_category do
      has_many :products
      has_many :shipping_method_categories
    end
    has_many :shipping_methods, through: :shipping_method_categories

    def self.digital
      find_by(name: DIGITAL_NAME)
    end
  end
end
