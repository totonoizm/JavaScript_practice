class GildedRose
    AGED_BRIE = "Aged Brie"
    BACKSTAGE_PASS = "Backstage passes to a TAFKAL80ETC concert"
    SULUFURAS = "Sulfuras, Hand of Ragnaros"

  def initialize(items)
    case AGED_BRIE


  end

  def increment_item_quality(item)
    item.quality = item.quality + 1
  end

    def first_step(item)
        case item.name
        when AGED_BRIE
            increment_item_quality(item)
        when BACKSTAGE_PASS
            if items.sell_in >= 11
                increment_item_quality(item)

        if item.name != AGED_BRIE and item.name != BACKSTAGE_PASS
            if item.quality > 0
              if item.name != SULUFURAS
                item.quality = item.quality - 1
              end
            end
          else
            if item.quality < 50
              item.quality = item.quality + 1
              if item.name == BACKSTAGE_PASS
                if item.sell_in < 11
                  if item.quality < 50
                    item.quality = item.quality + 1
                  end
                end
                if item.sell_in < 6
                  if item.quality < 50
                    item.quality = item.quality + 1
                  end
                end
              end
            end
          end
          if item.name != SULUFURAS
            item.sell_in = item.sell_in - 1
          end
          if item.sell_in < 0
            if item.name != AGED_BRIE
              if item.name != BACKSTAGE_PASS
                if item.quality > 0
                  if item.name != SULUFURAS
                    item.quality = item.quality - 1
                  end
                end
              else
                item.quality = item.quality - item.quality
              end
            else
              if item.quality < 50
                item.quality = item.quality + 1
              end
            end
          end
    end


  def update_quality()
    @items.each do |item|
    end
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end