# @param intervals: an array of meeting time intervals
# @return: if a person could attend all meetings
def can_attend_meetings(intervals)
  intervals = intervals.sort_by(&:start)
  (1..intervals.size - 1).each do |i|
    if intervals[i - 1].end > intervals[i].start
      return false
    end
  end

  true
end
