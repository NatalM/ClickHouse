if (USE_INTERNAL_GPERFTOOLS_LIBRARY)
	set(GPERFTOOLS_INCLUDE_DIR "${ClickHouse_SOURCE_DIR}/contrib/libtcmalloc/include/")
	set(GPERFTOOLS_TCMALLOC tcmalloc_minimal_internal)
	include_directories (BEFORE ${GPERFTOOLS_INCLUDE_DIR})
else ()
	find_package (Gperftools REQUIRED)
	include_directories (${GPERFTOOLS_INCLUDE_DIR})
endif ()

message(STATUS "Using gperftools: ${GPERFTOOLS_INCLUDE_DIR} : ${GPERFTOOLS_TCMALLOC}")

