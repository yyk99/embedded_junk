#
#
#

add_executable(sizeof sizeof.c)
add_executable(sizeof_cc sizeof.cpp)
add_executable(exit_code exit_code.c)

add_executable(first first.s)
# set_target_properties(first PROPERTIES LINKER_LANGUAGE C)
add_executable(sum01 sum01.s)
add_executable(sum02 sum02.s)
add_executable(load01 load01.s)
add_executable(store01 store01.s)
add_executable(compare01 compare01.s)


# add_executable(code0 code0.s)
