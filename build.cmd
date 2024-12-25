setlocal
call %~dp0..\vc_setup.cmd
title Configuring DXF lib
title Building DXF lib Debug
msbuild /m dxflib.vcxproj -p:Configuration="Debug"
title Building DXF lib Release
msbuild /m dxflib.vcxproj -p:Configuration="Release"
title Done building DXF lib
NuGet.exe pack dxflib.nuspec -OutputDirectory %PACKAGES%\nuget_packages
endlocal
