module Players
  class Computer < Player
    
    def move(board)
      return "5" if !board.taken?("5")
      
      av_corners = ["1", "3", "7", "9"].select do |num|
        !board.taken?(num)
      end
      
      return av_corners.sample if !av_corners.empty?
      
      av_rest = ["2", "4", "6", "8"].select do |num|
        !board.taken?(num)
      end
      
      return av_rest.sample if !av_rest.empty?
    end
    
  end
end