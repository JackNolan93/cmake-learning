#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/jack.nolan/developer/cmake-learning/build
  make -f /Users/jack.nolan/developer/cmake-learning/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/jack.nolan/developer/cmake-learning/build
  make -f /Users/jack.nolan/developer/cmake-learning/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/jack.nolan/developer/cmake-learning/build
  make -f /Users/jack.nolan/developer/cmake-learning/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/jack.nolan/developer/cmake-learning/build
  make -f /Users/jack.nolan/developer/cmake-learning/build/CMakeScripts/ReRunCMake.make
fi

