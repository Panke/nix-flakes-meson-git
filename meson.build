project('vet-tools', 'd')

zmqd_dep = dependency('zmqd', fallback : ['zmqd', 'this_dep'], static: true)
mir_ion_dep = dependency('mir-ion', fallback : ['mir-ion', 'this_dep'], static: true)
darc_dep = dependency('darc', fallback : ['darc', 'this_dep'], static: true)

common_deps = [zmqd_dep, mir_ion_dep, darc_dep]

subdir('acp')

test_exe = executable('test_exe',
    sources: 'test.d',
    dependencies: [zmqd_dep, mir_ion_dep])

