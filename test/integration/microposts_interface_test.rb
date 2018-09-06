require 'test_helper'

class MicropostsInterfaceTest < ActionDispatch::IntegrationTest

def setup
    @user = users(:vishal)
  end

  test "micropost interface" do
    log_in_as(@user)
    get root_path
    # assert_select 'div.pagination'
    # Invalid submission
    # assert_select 'input[type=FILL_IN]'

    assert_no_difference 'Micropost.count' do
      post microposts_path, params: { micropost: { content: "" } }
    end
    # assert_select 'div#error_explanation'
    # Valid submission
    # content = "This micropost really ties the room together"
    #   # picture = fixture_file_upload('test/fixtures/menu.png', 'image/png')
    #    assert_difference 'Micropost.count', 1 do
    #    post microposts_path, params: { micropost: { content: content ,
    #    												picture: FILL_IN } }
    # end

    # assert FILL_IN.picture?
    # follow_redirect!
    # assert_match content, response.body
    # # Delete a post.
    # assert_select 'a', 'delete'
    # first_micropost = @user.microposts.paginate(page: 1).first
    # assert_difference 'Micropost.count', -1 do
    #   delete micropost_path(first_micropost)
    # end
    # # Visit a different user.
    get user_path(users(:chintu))
    assert_select 'a', { text: 'delete', count: 0 }
  end

end
    
