require 'date'
require 'optparse'

a = Date.today
month=a.month
year=a.year

parms=ARGV.getopts("m:y:")
month=parms["m"].to_i if parms["m"]!=nil
year=parms["y"].to_i if parms["y"]!=nil

def calendar(year,month)
  puts "#{month}月 #{year}".center(20)
  weeks=["日","月","火","水","木","金","土","\n"]
  wday_first=Date.new(year,month,1).wday
  month_length= Date.new(year, month, -1).day

  (wday_first).times{weeks.push("  ")}

  day=1
  month_length.times do
    if day<10
      weeks.push(" #{day}")
    else
      weeks.push(day)
    end
    day+=1
    weeks.push("\n") if (weeks.length+1)%8==0
  end

  n=0
  print " "
  (weeks.length).times do
    print weeks[n]
    print " "
    n+=1
  end
  puts "\n"
end

calendar(year,month)
