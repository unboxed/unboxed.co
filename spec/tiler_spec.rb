require 'spec_helper'
require 'tiler'

RSpec.describe Tiler do
  subject { described_class.new }

  it 'has rows' do
    expect(subject).to respond_to(:rows)
  end

  it 'has columns' do
    expect(subject).to respond_to(:columns)
  end

  it 'has 10 rows by default' do
    expect(subject.rows).to eq 10
  end

  it 'has 3 columns by default' do
    expect(subject.columns).to eq 3
  end

  it 'allows setting rows via keyword at construction' do
    expect(described_class.new(rows: 4).rows).to eq 4
  end

  it 'allows setting columns via keyword at construction' do
    expect(described_class.new(columns: 5).columns).to eq 5
  end

  describe '#lay_tiles' do
    let(:tiler) { described_class.new }
    subject { tiler.lay_tiles }
    context 'when no tiles have been added' do
      it 'returns an array of rows X columns with NoTile in every cell' do
        expect(subject.size).to eq 10
        subject.each do |row|
          expect(row.size).to eq 3
          row.each do |cell|
            expect(cell).to eq Tiler::NoTile
          end
        end
      end
    end

    context 'when tiles are added' do
      let(:tile_contents) { :abstract_shapes }

      it 'puts the 1st in the top left slot' do
        tiler.add_tile(tile_contents)
        expect(subject[0][0].contents).to eq tile_contents
      end

      it 'fills the first row before using cells in the second row' do
        tiler.columns.times { |idx| tiler.add_tile("tile #{idx+1}") }
        tiler.add_tile(tile_contents)
        expect(subject[0]).not_to include Tiler::NoTile
        expect(subject[1][0].contents).to eq tile_contents
      end

      it "raises an error if we try to put in too many tiles" do
        small_tiler = Tiler.new(rows: 1, columns: 1)
        small_tiler.add_tile(:ok)
        small_tiler.add_tile(:not_ok)
        expect { small_tiler.lay_tiles }.to raise_error(Tiler::TilingError, "No room left!")
      end

      it 'fills more than one slot in the layout if the tile is larger than 1x1' do
        tiler.add_tile(tile_contents, width: 2, height: 2)
        expect(subject[0][0].contents).to eq tile_contents
        expect(subject[0][1].contents).to eq tile_contents
        expect(subject[0][2].contents).to be_nil
        expect(subject[1][0].contents).to eq tile_contents
        expect(subject[1][1].contents).to eq tile_contents
        expect(subject[1][2].contents).to be_nil
      end

      it 'only the top left slot of a large tile is a Tile instance, the rest are LargeTileReference instances' do
        tiler.add_tile(tile_contents, width: 2, height: 2)
        expect(subject[0][0]).to be_a Tiler::Tile
        expect(subject[0][1]).to be_a Tiler::LargeTileReference
        expect(subject[1][0]).to be_a Tiler::LargeTileReference
        expect(subject[1][1]).to be_a Tiler::LargeTileReference
      end

      it 'fills up space around larger tiles' do
        tiler.add_tile(:a_big_tile, width: 2, height: 2)
        tiler.add_tile(:a_small_tile)
        tiler.add_tile(:a_medium_tile, width: 1, height: 2)
        tiler.add_tile(:a_different_medium_tile, width: 2, height: 1)
        tiler.add_tile(:another_small_tile)

        # this generates:
        #
        #   +-+-+-+
        #   |b|b|s|
        #   +-+-+-+
        #   |b|b|m|
        #   +-+-+-+
        #   |d|d|m|
        #   +-+-+-+
        #   |o| | |
        #   +-+-+-+
        #

        expect(subject[0][0].contents).to eq :a_big_tile
        expect(subject[0][1].contents).to eq :a_big_tile
        expect(subject[0][2].contents).to eq :a_small_tile
        expect(subject[1][0].contents).to eq :a_big_tile
        expect(subject[1][1].contents).to eq :a_big_tile
        expect(subject[1][2].contents).to eq :a_medium_tile
        expect(subject[2][0].contents).to eq :a_different_medium_tile
        expect(subject[2][1].contents).to eq :a_different_medium_tile
        expect(subject[2][2].contents).to eq :a_medium_tile
        expect(subject[3][0].contents).to eq :another_small_tile
        expect(subject[3][1].contents).to be_nil
        expect(subject[3][2].contents).to be_nil
      end

      it 'goes back to fill up space around larger tile regardless of the order of the tiles being laid' do
        tiler.add_tile(:a_big_tile, width: 2, height: 2)
        tiler.add_tile(:a_different_medium_tile, width: 2, height: 1)
        tiler.add_tile(:a_small_tile)
        tiler.add_tile(:a_medium_tile, width: 1, height: 2)
        tiler.add_tile(:another_small_tile)

        # this generates (it's the same as the above spec):
        #
        #   +-+-+-+
        #   |b|b|s|
        #   +-+-+-+
        #   |b|b|m|
        #   +-+-+-+
        #   |d|d|m|
        #   +-+-+-+
        #   |o| | |
        #   +-+-+-+
        #

        expect(subject[0][0].contents).to eq :a_big_tile
        expect(subject[0][1].contents).to eq :a_big_tile
        expect(subject[0][2].contents).to eq :a_small_tile
        expect(subject[1][0].contents).to eq :a_big_tile
        expect(subject[1][1].contents).to eq :a_big_tile
        expect(subject[1][2].contents).to eq :a_medium_tile
        expect(subject[2][0].contents).to eq :a_different_medium_tile
        expect(subject[2][1].contents).to eq :a_different_medium_tile
        expect(subject[2][2].contents).to eq :a_medium_tile
        expect(subject[3][0].contents).to eq :another_small_tile
        expect(subject[3][1].contents).to be_nil
        expect(subject[3][2].contents).to be_nil
      end
    end
  end
end

RSpec.describe Tiler::Tile do
  subject { described_class.new(:a_pretty_pattern) }

  it 'has width' do
    expect(subject).to respond_to(:width)
  end

  it 'has height' do
    expect(subject).to respond_to(:height)
  end

  it 'has contents' do
    expect(subject).to respond_to(:contents)
  end

  it 'has width of 1 by default' do
    expect(subject.width).to eq 1
  end

  it 'has height of 1 by default' do
    expect(subject.height).to eq 1
  end

  it 'allows setting width via keyword at construction' do
    expect(described_class.new(:a_pretty_pattern, width: 4).width).to eq 4
  end

  it 'allows setting height via keyword at construction' do
    expect(described_class.new(:a_pretty_pattern, height: 5).height).to eq 5
  end

  it 'sets the contents via the constructor' do
    expect(described_class.new(:a_complex_pattern).contents).to eq :a_complex_pattern
  end
end

RSpec.describe Tiler::NoTile do
  subject { described_class }

  it 'has width' do
    expect(subject).to respond_to(:width)
  end

  it 'has height' do
    expect(subject).to respond_to(:height)
  end

  it 'has contents' do
    expect(subject).to respond_to(:contents)
  end

  it 'has width of 1' do
    expect(subject.width).to eq 1
  end

  it 'has height of 1' do
    expect(subject.height).to eq 1
  end

  it 'has no contents' do
    expect(subject.contents).to be_nil
  end
end

RSpec.describe Tiler::LargeTileReference do
  let(:tile) { Tiler::Tile.new("a pattern", width: 2, height: 3) }
  subject { described_class.new(tile) }

  it 'has width' do
    expect(subject).to respond_to(:width)
  end

  it 'has height' do
    expect(subject).to respond_to(:height)
  end

  it 'has contents' do
    expect(subject).to respond_to(:contents)
  end

  it 'reports its tile width as its own' do
    expect(subject.width).to eq tile.width
  end

  it 'reports its tile height as its own' do
    expect(subject.height).to eq tile.height
  end

  it 'reports its tile contents as its own' do
    expect(subject.contents).to eq tile.contents
  end
end
