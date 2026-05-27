project "box2d"
    kind "StaticLib"
    language "C"
    cdialect "C17"
    rtti "Off"
    exceptionhandling "Off"
    staticruntime "Off"
    targetdir "bin/%{cfg.buildcfg}"
    includedirs {
        "include"
    }
    defines "BOX2D_ENABLE_SIMD"

    files { 
        "src/*.c",
        "src/*.h"
    }
    
    optimize "On"
    filter "system:linux"
        defines { "_POSIX_C_SOURCE=199309L" }
        
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }