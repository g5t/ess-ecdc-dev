#!/bin/bash
cc_version=$($CC -dumpversion)
conan profile update settings.compiler=gcc default
conan profile update settings.compiler.libcxx=libstdc++11 default
conan profile update settings.compiler.version=${cc_version} default
conan profile update conf.tools.build:compiler_executables="{'c':'${CC}', 'cpp': '${CXX}'}" default



patch "${CONAN_USER_HOME}/.conan/settings.yml" <<- EOM
--- .conan/settings.yml
+++ .conan/settings.yml
@@ -82,7 +82,7 @@
                   "10", "10.1", "10.2", "10.3", "10.4", "10.5",
                   "11", "11.1", "11.2", "11.3", "11.4",
                   "12", "12.1", "12.2", "12.3",
-                  "13", "13.1", "13.2",
+                  "13", "13.1", "13.2", "${cc_version}",
                   "14", "14.1"]
         libcxx: [libstdc++, libstdc++11]
         threads: [None, posix, win32]  # Windows MinGW
EOM
