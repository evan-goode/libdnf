set (DEFAULT_LIBDNF_MAJOR_VERSION 0)
set (DEFAULT_LIBDNF_MINOR_VERSION 74)
set (DEFAULT_LIBDNF_MICRO_VERSION 0)

if(DEFINED LIBDNF_MAJOR_VERSION)
  if(NOT ${DEFAULT_LIBDNF_MAJOR_VERSION} STREQUAL ${LIBDNF_MAJOR_VERSION})
    message(FATAL_ERROR "Variable DEFAULT_LIBDNF_MAJOR_VERSION=" ${DEFAULT_LIBDNF_MAJOR_VERSION} " in VERSION.cmake differs from LIBDNF_MAJOR_VERSION=" ${LIBDNF_MAJOR_VERSION} " in spec")
  endif()
else()
  set (LIBDNF_MAJOR_VERSION ${DEFAULT_LIBDNF_MAJOR_VERSION})
endif()

if(DEFINED LIBDNF_MINOR_VERSION)
  if(NOT ${DEFAULT_LIBDNF_MINOR_VERSION} STREQUAL ${LIBDNF_MINOR_VERSION})
    message(FATAL_ERROR "Variable DEFAULT_LIBDNF_MINOR_VERSION=" ${DEFAULT_LIBDNF_MINOR_VERSION} " in VERSION.cmake differs from LIBDNF_MINOR_VERSION=" ${LIBDNF_MINOR_VERSION} " in spec")
  endif()
else()
  set (LIBDNF_MINOR_VERSION ${DEFAULT_LIBDNF_MINOR_VERSION})
endif()

if(DEFINED LIBDNF_MICRO_VERSION)
  if(NOT ${DEFAULT_LIBDNF_MICRO_VERSION} STREQUAL ${LIBDNF_MICRO_VERSION})
    message(FATAL_ERROR "Variable DEFAULT_LIBDNF_MICRO_VERSION=" ${DEFAULT_LIBDNF_MICRO_VERSION} " in VERSION.cmake differs from LIBDNF_MICRO_VERSION=" ${LIBDNF_MICRO_VERSION} " in spec")
  endif()
else()
  set (LIBDNF_MICRO_VERSION ${DEFAULT_LIBDNF_MICRO_VERSION})
endif()
set (LIBDNF_VERSION ${LIBDNF_MAJOR_VERSION}.${LIBDNF_MINOR_VERSION}.${LIBDNF_MICRO_VERSION})
