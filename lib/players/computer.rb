module Players
  class Computer < Player
    
    def move(board)
      return "5" if !board.taken?("5")
      
      av_corners = ["1", "3", "7", "9"].filter do |num|
        !board.taken?(num)
      end
      
      return av_corners.sample if !av_corners.empty?
      
      return "2" if !board.taken?("2")
      return "4" if !board.taken?("4")
      return "6" if !board.taken?("6")
      return "8" if !board.taken?("8")
    end
    
  end
end