# RB101-RB109 Small problems; Easy 6

=begin
1.

2.

3.

4.

5.

6.

7.

8.

9.

10.

=end

DEGREE = "\xC2\xB0"

def dms(deg)
  degrees = deg.to_i
  minutes = ((deg % 1) * 60).to_i
  seconds = ((((deg % 1) * 60) % 1) * 60).to_i

  p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(76.73)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = 3600

# def dms(degree_float)
#   total_seconds = (degree_float * SECONDS_PER_DEGREE).round
#   p total_seconds
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   p degrees, remaining_seconds
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   p minutes, seconds
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# p dms(30)

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")