require 'test_helper'

class ArticleListWidgetCellTest < Cell::TestCase
  test "show" do
    invoke :show
    assert_select "p"
  end
  

end
