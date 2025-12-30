# frozen_string_literal: true

def print_board(row1, row2, row3)
  row1_out = []
  row1.each do |cell|
    if cell == 1
      row1_out.push("[X]")
    else
      row1_out.push("[ ]")
    end
  end
  row2_out = []
  row2.each do |cell|
    if cell == 1
      row2_out.push("[X]")
    else
      row2_out.push("[ ]")
    end
  end
  row3_out = []
  row3.each do |cell|
    if cell == 1
      row3_out.push("[X]")
    else
      row3_out.push("[ ]")
    end
  end
end