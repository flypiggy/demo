
#watch('^test.*/.*_test\.rb')  { run tests }
watch('^test/functional/(.*)_test\.rb')   { |m| run tests('functional', m[1]) }
watch('^test/unit/(.*)_test\.rb')   { |m| run tests('unit', m[1]) }
# --------------------------------------------------
# Helpers
# --------------------------------------------------

def tests(type, file = nil)
  cmd = "rake test:#{type}"
  cmd << ":file name=#{file}" if file
end

def run(cmd)
  now = Time.now.to_s
  puts "", "=" * cmd.length, now, ""
  puts cmd
  puts "-" * cmd.length, ""
  #result = `#{cmd}`
  #growl result rescue nil
  system cmd
end

def growl(message) 
  growlnotify = `which growlnotify`.chomp
  options = "-w -n Watchr -m '#{message}'"
  p %(#{growlnotify} #{options} &)
end
