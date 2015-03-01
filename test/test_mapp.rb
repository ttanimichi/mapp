require 'test_helper'

class MappTest < Test::Unit::TestCase
  test "normal" do
    assert { [1,2,3].mapp(&:to_s) == [1,2,3].map(&:to_s) }
  end

  test "nested" do
    nested_array = [
      [
        [1, 2, 3],
        [4, 5, 6]
      ],
      [
        [7, 8, 9],
        [0, 1, 2],
      ]
    ]
    expected = [
      [
        ['1', '2', '3'],
        ['4', '5', '6']
      ],
      [
        ['7', '8', '9'],
        ['0', '1', '2'],
      ]
    ]
    assert { nested_array.mapp(&:to_s) == expected }
  end

  test "nested and not square" do
    nested_array = [
      [
        [1, 2, 3],
        [4, 5, 6]
      ],
      [
        [7, [0, 1, 2], 9],
        [0, 1, 2]
      ]
    ]
    expected = [
      [
        ['1', '2', '3'],
        ['4', '5', '6']
      ],
      [
        ['7', ['0', '1', '2'], '9'],
        ['0', '1', '2'],
      ]
    ]
    assert { nested_array.mapp(&:to_s) == expected }
  end
end
