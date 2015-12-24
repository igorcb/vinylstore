module ApplicationHelper
	def full_title(page_title)
    base_title = "Vinyl Store"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end	

  def select_state
    ([["Selado", 0], ["Quase Perfeito", 1], ["Excelente", 2], ["Muito Bom", 3], ["Bom", 4], ["Regular", 5], ["Ruim", 6]])
  end

  def range_year
    #(1950..Date.today.year).to_a, Date.today.year)
  end
end
