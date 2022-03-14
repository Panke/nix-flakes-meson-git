project('zmqd', 'd')

zeromq = subproject('deimos-zeromq')
zeromq_dep = zeromq.get_variable('this_dep')

lib = library('zmqd', 'src/zmqd.d', dependencies: zeromq_dep)

this_dep = declare_dependency(
	include_directories: 'src',
	link_with: lib,
	dependencies: zeromq_dep
)

