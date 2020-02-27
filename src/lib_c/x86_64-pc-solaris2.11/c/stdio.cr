require "./sys/types"
require "./stddef"

lib LibC
  type File = Void

  fun fdopen(x0 : Int, x1 : Char*) : File*
  fun printf(x0 : Char*, ...) : Int
  fun fprintf(fd : File*, format : Char*, ...) : Int
  fun rename(x0 : Char*, x1 : Char*) : Int
  fun snprintf(x0 : Char*, x1 : SizeT, x2 : Char*, ...) : Int
end
