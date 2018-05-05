set toolchain=D:/Android/SDK/ndk-bundle1/build/cmake/android.toolchain.cmake
set android_ndk=D:/Android/SDK/ndk-bundle1
set build_type=Release
set gernerator="Ninja"
if not exist armeabi md armeabi 
cd armeabi 
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="armeabi" -DCMAKE_GENERATOR=%gernerator% 
ninja 
cd .. 
if not exist armeabi-v7a md armeabi-v7a 
cd armeabi-v7a 
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="armeabi-v7a" -DCMAKE_GENERATOR=%gernerator% 
ninja 
cd ..