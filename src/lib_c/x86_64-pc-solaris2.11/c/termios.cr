require "./sys/types"

lib LibC
  VEOF      =        0
  VEOL      =        1
  VERASE    =        2
  VINTR     =        0
  VKILL     =        3
  VMIN      =        4
  VQUIT     =        1
  VSTART    =        8
  VSTOP     =        9
  VSUSP     =       10
  BRKINT    = 0o000001
  ICRNL     = 0o000400
  IGNBRK    = 0o000001
  IGNCR     = 0o000200
  IGNPAR    = 0o000004
  INLCR     = 0o000100
  INPCK     = 0o000020
  ISTRIP    = 0o000040
  IXANY     = 0o004000
  IXOFF     = 0o010000
  IXON      = 0o002000
  PARMRK    = 0o000010
  OPOST     = 0o000001
  ONLCR     = 0o000004
  OCRNL     = 0o000010
  ONOCR     = 0o000020
  ONLRET    = 0o000040
  OFDEL     = 0o000200
  OFILL     = 0o000100
  CRDLY     = 0o003000
  CR0       =        0
  CR1       = 0o001000
  CR2       = 0o002000
  CR3       = 0o003000
  TABDLY    = 0o014000
  TAB0      = 0o000000
  TAB1      = 0o004000
  TAB2      = 0o010000
  TAB3      = 0o014000
  BSDLY     = 0o020000
  BS0       =        0
  BS1       =        1
  VTDLY     = 0o040000
  VT0       =        0
  VT1       = 0o040000
  FFDLY     = 0o100000
  FF0       =        0
  FF1       = 0o100000
  NLDLY     = 0o000400
  NL0       =        0
  NL1       = 0o000400
  B0        =        0
  B50       =        1
  B75       =        2
  B110      =        3
  B134      =        4
  B150      =        5
  B200      =        6
  B300      =        7
  B600      =        8
  B1200     =        9
  B1800     =       10
  B2400     =       11
  B4800     =       12
  B9600     =       13
  B19200    =       14
  B38400    =       15
  CSIZE     = 0o000060
  CS5       = 0o000000
  CS6       = 0o000020
  CS7       = 0o000040
  CS8       = 0o000060
  CSTOPB    = 0o000100
  CREAD     = 0o000200
  PARENB    = 0o000400
  PARODD    = 0o001000
  HUPCL     = 0o002000
  CLOCAL    = 0o004000
  ECHO      = 0o000010
  ECHOE     = 0o000020
  ECHOK     = 0o000040
  ECHONL    = 0o000100
  ICANON    = 0o000002
  IEXTEN    = 0o100000
  ISIG      = 0o000001
  NOFLSH    = 0o000200
  TOSTOP    = 0o000400
  TCSANOW   = 0o052016
  TCSADRAIN = 0o052017
  TCSAFLUSH = 0o052020
  TCIFLUSH  =        0
  TCIOFLUSH =        2
  TCOFLUSH  =        1
  TCIOFF    =        2
  TCION     =        3
  TCOOFF    =        0
  TCOON     =        1

  alias CcT = Char
  alias SpeedT = UInt
  alias TcflagT = UInt

  struct Termios
    c_iflag : TcflagT
    c_oflag : TcflagT
    c_cflag : TcflagT
    c_lflag : TcflagT
    c_cc : StaticArray(CcT, 20)
    c_ispeed : SpeedT
    c_ospeed : SpeedT
  end

  fun tcgetattr(x0 : Int, x1 : Termios*) : Int
  fun tcsetattr(x0 : Int, x1 : Int, x2 : Termios*) : Int
  fun cfmakeraw(x0 : Termios*) : Void
end
