module StoryBoard
  module_function

  def load(identifier)
    story_board = UIStoryboard.storyboardWithName 'MainStoryboard', bundle:nil
    story_board.instantiateViewControllerWithIdentifier identifier.to_s
  end
end