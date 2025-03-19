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
    filter "system:linux"
        defines { "_POSIX_C_SOURCE=199309L" }

    files { 
        "src/aabb.c",
        "src/aabb.h",
        "src/arena_allocator.c",
        "src/arena_allocator.h",
        "src/array.c",
        "src/array.h",
        "src/atomic.h",
        "src/bitset.c",
        "src/bitset.h",
        "src/body.c",
        "src/body.h",
        "src/broad_phase.c",
        "src/broad_phase.h",
        "src/constants.h",
        "src/constraint_graph.c",
        "src/constraint_graph.h",
        "src/contact.c",
        "src/contact.h",
        "src/contact_solver.c",
        "src/contact_solver.h",
        "src/core.c",
        "src/core.h",
        "src/ctz.h",
        "src/distance.c",
        "src/distance_joint.c",
        "src/dynamic_tree.c",
        "src/geometry.c",
        "src/hull.c",
        "src/id_pool.c",
        "src/id_pool.h",
        "src/island.c",
        "src/island.h",
        "src/joint.c",
        "src/joint.h",
        "src/manifold.c",
        "src/math_functions.c",
        "src/motor_joint.c",
        "src/mouse_joint.c",
        "src/prismatic_joint.c",
        "src/revolute_joint.c",
        "src/sensor.c",
        "src/sensor.h",
        "src/shape.c",
        "src/shape.h",
        "src/solver.c",
        "src/solver.h",
        "src/solver_set.c",
        "src/solver_set.h",
        "src/table.c",
        "src/table.h",
        "src/timer.c",
        "src/types.c",
        "src/weld_joint.c",
        "src/wheel_joint.c",
        "src/world.c",
        "src/world.h"
    }
        
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"