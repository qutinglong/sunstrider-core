message("")
message("* Sunstrider revision:   ${rev_hash} ${rev_date} (${rev_branch} branch)")
if( UNIX )
  message("* Sunstrider buildtype  : ${CMAKE_BUILD_TYPE}")
endif()
message("")

message("* Will install to:        ${CMAKE_INSTALL_PREFIX}")
if(UNIX)
   message("* With config dir at:     ${CONF_DIR}")
   message("* Libs install dir at:    ${LIBSDIR}")
endif(UNIX)

if( TOOLS )
  message("* Build map/vmap/mmaps tools:   Yes")
else()
  message("* Build map/vmap/mmaps tools:   No")
endif()

if(DO_DEBUG)
    message("* Debug mode:                   Yes")
else()
    message("* Debug mode:                   No")
endif(DO_DEBUG)

if(DO_WARN)
    message("* All warnings:                 Yes")
else()
    message("* All warnings:                 No")
endif(DO_WARN)

if(PLAYERBOT)
    message("* Playerbot:                    Yes")
else()
    message("* Playerbot:                    No ")
endif()

if(TESTS)
    message("* Tests:                        Yes")
else()
    message("* Tests:                        No ")
endif()

if(USE_GPERFTOOLS)
    message("* Use gperftools:               Yes")
else()
    message("* Use gperftools:               No ")
endif()

if (BUILD_SHARED_LIBS)
  message("")
  message(" *** WITH_DYNAMIC_LINKING - INFO!")
  message(" *** Will link against shared libraries!")
  message(" *** Please note that this is an experimental feature!")
  if (WITH_DYNAMIC_LINKING_FORCED)
    message("")
    message(" *** Dynamic linking was enforced through a dynamic script module!")
  endif()
  add_definitions(-DTRINITY_API_USE_DYNAMIC_LINKING)

  if( UNIX )
    message(WARNING "Dynamic Linking may not work properly on unix yet, prefer using static linking at this time")
  endif()
  
  WarnAboutSpacesInBuildPath()
endif()
