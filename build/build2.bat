set toolchain=D:/Android/SDK/ndk-bundle1/build/cmake/android.toolchain.cmake
set android_ndk=D:/Android/SDK/ndk-bundle1
set build_type=Release
set gernerator="Ninja"
if not exist %1 md %1
cd %1
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="%1" -DCMAKE_GENERATOR=%gernerator%
ninja