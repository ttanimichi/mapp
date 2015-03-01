require "mapp/version"

class Array
  def mapp(&block)
    map do |item|
      if item.is_a? Array
        item.mapp(&block)
      else
        block.call(item)
      end
    end
  end
end
