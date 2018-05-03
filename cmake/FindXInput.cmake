if(XINPUT_INCLUDE_DIR AND XINPUT_LIBRARY)
        set(XINPUT_FIND_QUIETLY TRUE)
endif(XINPUT_INCLUDE_DIR AND XINPUT_LIBRARY)

find_library(XINPUT_LIBRARY XInput.lib
	PATHS ${PROJECT_BASE_DIR}/redist/xinput/lib_${SPEC})
find_path(XINPUT_INCLUDE_DIR XInput.h
	PATHS ${PROJECT_BASE_DIR}/redist/xinput/include)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(XINPUT DEFAULT_MSG XINPUT_LIBRARY XINPUT_INCLUDE_DIR)

MARK_AS_ADVANCED(
	XINPUT_INCLUDE_DIR
	XINPUT_LIBRARY
)
