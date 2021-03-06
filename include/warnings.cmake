include(${CMAKE_CURRENT_LIST_DIR}/check_and_add_flag.cmake)

set(THIS_DIR ${CMAKE_CURRENT_LIST_DIR})

function(add_warnings)
	if (${WIN32})
		# Force to always compile with W4
		if(CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
			string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
		else()
			add_compile_options(/W4)
		endif()
	  	check_and_add_flag(FLAG "/FI${THIS_DIR}/../headers/msvc_warnings.h")
	else()
		check_and_add_flag(FLAG -fdiagnostics-color=always)
		check_and_add_flag(FLAG -Wall)
		check_and_add_flag(FLAG -Wcast-align)
		check_and_add_flag(FLAG -Wcast-qual)
		check_and_add_flag(FLAG -Wconversion)
		check_and_add_flag(FLAG -Wctor-dtor-privacy)
		check_and_add_flag(FLAG -Wdisabled-optimization)
		check_and_add_flag(FLAG -Wdouble-promotion)
		check_and_add_flag(FLAG -Wduplicated-branches)
		check_and_add_flag(FLAG -Wduplicated-cond)
		check_and_add_flag(FLAG -Wextra)
		check_and_add_flag(FLAG -Wformat=2)
		check_and_add_flag(FLAG -Winit-self)
		check_and_add_flag(FLAG -Wlogical-op)
		check_and_add_flag(FLAG -Wno-gnu-zero-variadic-macro-arguments)
		# check_and_add_flag(FLAG -Wmissing-declarations)
		check_and_add_flag(FLAG -Wmissing-include-dirs)
		check_and_add_flag(FLAG -Wno-sign-conversion)
		check_and_add_flag(FLAG -Wnoexcept)
		check_and_add_flag(FLAG -Wnull-dereference)
		check_and_add_flag(FLAG -Wold-style-cast)
		check_and_add_flag(FLAG -Woverloaded-virtual)
		check_and_add_flag(FLAG -Wpedantic)
		# check_and_add_flag(FLAG -Wredundant-decls)
		check_and_add_flag(FLAG -Wrestrict)
		check_and_add_flag(FLAG -Wshadow)
		check_and_add_flag(FLAG -Wstrict-aliasing=1)
		check_and_add_flag(FLAG -Wstrict-null-sentinel)
		check_and_add_flag(FLAG -Wstrict-overflow=2)
		check_and_add_flag(FLAG -Wswitch-default)
		check_and_add_flag(FLAG -Wundef)
		check_and_add_flag(FLAG -Wno-unknown-pragmas)
		check_and_add_flag(FLAG -Wuseless-cast)
	endif()
endfunction()
