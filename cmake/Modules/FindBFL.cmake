
include(LibFindMacros)

libfind_pkg_check_modules(BFL_PKGCONF orocos-bfl)

find_path(BFL_INCLUDE_DIR
          NAMES bfl/bfl_constants.h
          HINTS ${BFL_PKGCONF_INCLUDE_DIRS})

find_library(BFL_LIBRARY
             NAMES liborocos-bfl.so
             HINTS ${BFL_PKGCONF_LIBRARY_DIRS})


set(BFL_PROCESS_INCLUDES BFL_INCLUDE_DIR)
set(BFL_PROCESS_LIBS BFL_LIBRARY)
libfind_process(BFL)