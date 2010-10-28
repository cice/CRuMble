class StickyNoteBoardCell < Cell::Base

  def display
    @noted = @opts[:noted]
    
    render
  end
  
  
  
end
