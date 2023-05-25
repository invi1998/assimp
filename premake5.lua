project "assimp"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"code/**.h",
        "code/**.cpp"
	}

    includedirs
    {
        "include",
        "contrib"
    }

	filter "system:windows"
		systemversion "latest"
		
	filter "configurations:Debug"
		runtime "Debug"

	filter "configurations:Release"
		runtime "Release"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
