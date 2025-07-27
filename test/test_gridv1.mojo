from testing import assert_equal
from pixi_mojo_experiments.gridv1 import Grid


def test_grid_str():
    # Create a 3x3 grid with a known pattern
    grid = Grid(3, 3, [[0, 1, 0], [1, 1, 0], [0, 0, 1]])
    expected = " * \n** \n  *"
    assert_equal(String(grid), expected)
