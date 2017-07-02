class Tiler
  class TilingError < StandardError; end

  attr_reader :rows, :columns

  def initialize(rows: 10, columns: 3)
    @rows = rows
    @columns = columns
    @tiles = []
  end

  def lay_tiles
    tile_layout = generate_empty_tile_layout
    @tiles.each do |tile|
      lay_tile(tile, tile_layout)
    end
    tile_layout
  end

  def add_tile(tile_contents, width: 1, height: 1)
    @tiles << Tiler::Tile.new(tile_contents, width: width, height: height)
  end

  class NoTile
    def self.width; 1; end
    def self.height; 1; end
    def self.contents; nil; end
  end

  class Tile
    attr_reader :contents, :width, :height

    def initialize(contents, width: 1, height: 1)
      @contents = contents
      @width = width
      @height = height
    end
  end

  class LargeTileReference
    attr_reader :tile

    def initialize(tile)
      @tile = tile
    end

    def contents
      tile.contents
    end

    def width
      tile.width
    end

    def height
      tile.height
    end
  end

  private

  def generate_empty_tile_layout
    rows.times.map do |_row_idx|
      columns.times.map do |_column_idx|
        NoTile
      end
    end
  end

  def lay_tile(tile, tile_layout)
    space = empty_slots(tile_layout).detect { |empty_slot| fits?(tile, empty_slot, tile_layout) }
    raise TilingError, "No room left!" if space.nil?

    slots_to_fill = slots_for_tile(tile, space)
    top_left_slot, *other_slots = slots_to_fill
    tile_layout[top_left_slot.last][top_left_slot.first] = tile
    if other_slots.any?
      tile_ref = Tiler::LargeTileReference.new(tile)
      other_slots.each do |slot|
        tile_layout[slot.last][slot.first] = tile_ref
      end
    end
  end

  def empty_slots(tile_layout)
    Enumerator.new do |yielder|
      tile_layout.each.with_index do |row, row_idx|
        row.each.with_index do |cell, column_idx|
          if (cell == NoTile)
            yielder << [column_idx, row_idx]
          end
        end
      end
    end
  end

  def slots_for_tile(tile, location = [0 , 0])
    tile.height.times.flat_map do |y|
      tile.width.times.map do |x|
        [location.first + x, location.last + y]
      end
    end
  end

  def fits?(tile, location, tile_layout)
    return false if tile_layout[location.last][location.first] != NoTile
    return true if tile.width == 1 && tile.height == 1
    needed_slots = slots_for_tile(tile, location)
    needed_slots.all? { |slot| tile_layout[slot.last][slot.first] == NoTile }
  end
end
