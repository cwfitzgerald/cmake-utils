function(make_target_includes_system target)
	get_target_property(INTERFACE_INCLUDES ${target} INTERFACE_INCLUDE_DIRECTORIES)
	# get_target_property(PUBLIC_INCLUDES ${target} PUBLIC_INCLUDE_DIRECTORIES)
	target_include_directories(${target} SYSTEM BEFORE INTERFACE ${INTERFACE_INCLUDES})
	# target_include_directories(${target} SYSTEM BEFORE PUBLIC ${PUBLIC_INCLUDES})
endfunction()