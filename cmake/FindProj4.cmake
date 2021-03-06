if(PROJ4_INCLUDE_DIR AND PROJ4_LIBRARY)
  set(PROJ4_FIND_QUIETLY TRUE)
endif(PROJ4_INCLUDE_DIR AND PROJ4_LIBRARY)

find_library(PROJ4_LIBRARY proj libproj4 PATHS ${PROJECT_BASE_DIR}/redist/Proj4/${FULL_QT_VERSION}/lib_${SPEC})

find_path(PROJ4_INCLUDE_DIR
	proj_api.h
	PATHS ${PROJECT_BASE_DIR}/redist/Proj4/${FULL_QT_VERSION}/src)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PROJ4 DEFAULT_MSG PROJ4_LIBRARY PROJ4_INCLUDE_DIR)

MARK_AS_ADVANCED(
	PROJ4_INCLUDE_DIR
	PROJ4_LIBRARY
)
