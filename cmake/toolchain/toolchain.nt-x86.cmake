if(CMAKE_HOST_SYSTEM_NAME MATCHES "Linux")
  set(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)
  set(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
  set(WIN32_OBJCOPY i686-w64-mingw32-objcopy)
  set(WIN32_OBJDUMP i686-w64-mingw32-objdump)
  set(WIN32_NM i686-w64-mingw32-nm)
  set(CMAKE_RC_COMPILER_ENV_VAR "RC")
  set($ENV{RC} "")
  set(CMAKE_RC_COMPILER "")
else()
  message(FATAL_ERROR Unsupported build platform.)
endif()

set(CMAKE_C_STANDARD_LIBRARIES "-lwinmm -Wl,-Bstatic -lpthread -Wl,-Bdynamic -lws2_32 -lwsock32" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "-static -static-libgcc -static-libstdc++")
set(CMAKE_SHARED_LINKER_FLAGS "-static -static-libgcc -static-libstdc++ -Wl,-no-undefined")
