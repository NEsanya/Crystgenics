@[Link("myrust")]
lib R
  fun string() : UInt8*
end

module Myapp
  VERSION = "0.1.0"

  msg = String.new(R.string())
  puts "from Rust #{msg}"
end
