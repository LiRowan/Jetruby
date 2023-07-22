class CsEnd
  def cs_ending(word)
    if word.end_with?("cs") || word.end_with?("CS")
      2**(word.size)
    else
      word.reverse
    end
  end
end

