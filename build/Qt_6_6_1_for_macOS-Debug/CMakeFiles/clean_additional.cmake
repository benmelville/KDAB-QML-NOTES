# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appKDAB-QML-NOTES_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appKDAB-QML-NOTES_autogen.dir/ParseCache.txt"
  "appKDAB-QML-NOTES_autogen"
  )
endif()
