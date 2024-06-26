#begin lib_target
  #define TARGET nametag
  #define LOCAL_LIBS otpbase
  #define OTHER_LIBS \
    panda:m pandaexpress:m \
    interval:c direct:m \
    interrogatedb \
    dtoolutil:c dtoolbase:c dtool:m \
    express:c prc event:c pgraph:c pgraphnodes:c jobsystem:c linmath:c gobj:c \
    anim:c putil:c mathutil:c downloader:c mathutil:c \
    recorder:c grutil:c collide:c device:c \
    dgraph:c display:c gsgbase:c parametrics:c text:c pnmimage:c \
    pipeline:c pstatclient:c cull:c pnmimagetypes:c tform:c \
    audio:c pgui:c movies:c \
    $[if $[HAVE_NET],net:c] $[if $[WANT_NATIVE_NET],nativenet:c]

  #if $[HAVE_FREETYPE]
    #define OTHER_LIBS $[OTHER_LIBS] pnmtext:c
  #endif

  #define BUILDING_DLL BUILDING_OTP_NAMETAG

  #define SOURCES \
    chatBalloon.I chatBalloon.h \
    chatFlags.h \
    clickablePopup.I clickablePopup.h \
    config_nametag.h \
    nametag.I nametag.h \
    nametag2d.I nametag2d.h \
    nametag3d.I nametag3d.h \
    nametagFloat2d.h nametagFloat3d.h \
    nametagGroup.I nametagGroup.h \
    nametagGlobals.I nametagGlobals.h \
    popupMouseWatcherRegion.I popupMouseWatcherRegion.h \
    marginPopup.I marginPopup.h \
    marginManager.I marginManager.h \
    whisperPopup.I whisperPopup.h \
    tvector.h tpvector.h

  #define COMPOSITE_SOURCES  \
    chatBalloon.cxx \
    clickablePopup.cxx \
    config_nametag.cxx \
    nametag.cxx \
    nametag2d.cxx \
    nametag3d.cxx \
    nametagFloat2d.cxx nametagFloat3d.cxx \
    nametagGroup.cxx \
    nametagGlobals.cxx \
    popupMouseWatcherRegion.cxx \
    marginPopup.cxx \
    marginManager.cxx \
    whisperPopup.cxx

  #define IGATESCAN all

#end lib_target
