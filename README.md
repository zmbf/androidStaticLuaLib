# androidStaticLuaLib  （lua-5.3.4）	c++  c生成安卓静态库.a 动态库 .so 
#CMakeLists.txt   add_library(${PROJECT_NAME} STATIC ${SRCS})     STATIC表示编译结果为静态库.a,如果想为动态库.so,可改为SHARED
使用androidStudio 安装 CMake LLDB  Android NDK 
将SDK\cmake\3.6.4111459\bin  目录加入环境变量
修改工程目录\build\build.bat内  toolchain android_ndk 地址
执行build.bat (默认armeabi armeabi-v7a)