# frozen_string_literal: true

score = ARGV[0]
scores = score.split(',')
shots = []

scores.each do |s|
  if s == 'X'
    shots.push(10)
    shots.push(0)
  else
    shots.push(s.to_i)
  end
end

shots.push(0) if shots.size.odd?

frames = []

shots.each_slice(2) do |shot|
  frames.push(shot)
end

points = 0

frames.each_with_index do |frame, ind|
  if ind >= 9
    points += frame.sum
  elsif frame == [10, 0]
    point = frame.sum
    points +=
      if frames[ind + 1] == [10, 0]
        point + frames[ind + 1].sum + frames[ind + 2][0]
      else
        point + frames[ind + 1].sum
      end
  elsif frame.sum == 10
    points += frame.sum + frames[ind + 1][0]
  else
    points += frame.sum
  end
end

p points

