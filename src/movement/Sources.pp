#begin lib_target
  #define TARGET movement
  #define LOCAL_LIBS \
    otpbase
  #define OTHER_LIBS \
    panda:m downloader:c express:c  recorder:c \
    pgraph:c pgraphnodes:c pipeline:c grutil:c anim:c pstatclient:c \
    collide:c cull:c device:c dgraph:c display:c \
    event:c gobj:c gsgbase:c linmath:c mathutil:c parametrics:c \
    pnmimagetypes:c pnmimage:c tform:c text:c \
    putil:c audio:c pgui:c interrogatedb \
    $[if $[HAVE_NET],net:c] $[if $[WANT_NATIVE_NET],nativenet:c] \
    dtoolutil:c dtoolbase:c prc dtool:m

  #if $[HAVE_FREETYPE]
    #define OTHER_LIBS $[OTHER_LIBS] pnmtext:c
  #endif

#define BUILDING_DLL BUILDING_OTP_MOVEMENT

  #define SOURCES \
    config_movement.cxx config_movement.h \
    cMover.h cMover.I cMover.cxx cImpulse.h cImpulse.I cImpulse.cxx \
    cMoverGroup.h cMoverGroup.I cMoverGroup.cxx

  #define INSTALL_HEADERS \
    config_movement.h \
    cMover.h cMover.I cImpulse.h cImpulse.I cMoverGroup.h cMoverGroup.I

  #define IGATESCAN all
#end lib_target
