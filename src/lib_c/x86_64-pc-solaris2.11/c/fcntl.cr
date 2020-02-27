require "./sys/types"
require "./sys/stat"
require "./unistd"

lib LibC
  F_GETFD    =        1
  F_SETFD    =        2
  F_GETFL    =        3
  F_SETFL    =        4
  FD_CLOEXEC =        1
  O_CLOEXEC  = 0x800000
  O_CREAT    =   0x0100
  O_NOFOLLOW =  0x20000
  O_TRUNC    =   0x0200
  O_APPEND   =   0x0008
  O_NONBLOCK =   0x0080
  O_SYNC     =   0x0010
  O_RDONLY   =   0x0000
  O_RDWR     =   0x0002
  O_WRONLY   =   0x0001

  struct Flock
    l_start : OffT
    l_len : OffT
    l_pid : PidT
    l_type : Short
    l_whence : Short
    l_sysid : Int
  end

  fun fcntl(x0 : Int, x1 : Int, ...) : Int
  fun open(x0 : Char*, x1 : Int, ...) : Int
end
