# STM32 + Visual Studio Code + CMake + Windows Tutorial

This is a tutorial / guide / template project to configure a custom IDE for STM32 microcontrollers. STM32F103C8T6 microcontroller is used as an example.

## Installation

### 1. Arm GNU Toolchain.

Follow this [link][Arm GNU Toolchain]. Navigate to "Downloads" -> "Windows (mingw-w64-i686) hosted cross toolchains" -> "AArch32 bare-metal target (arm-none-eabi)" -> "arm-gnu-toolchain-13.3.rel1-mingw-w64-i686-arm-none-eabi.zip". Download the archive.

![1_Arm_GNU_Toolchain_text][1_Arm_GNU_Toolchain]

Unpack the archive. Add "bin" to the system PATH environment variable.

![2_Arm_GNU_Toolchain_text][2_Arm_GNU_Toolchain]
![3_Arm_GNU_Toolchain_text][3_Arm_GNU_Toolchain]

### 2. Make from MinGW-w64.

Follow this [link][MinGW-w64]. Navigate to the latest release -> "Assets" -> "w64devkit-1.23.0.zip". Download the archive.

![4_MinGW_w64_text][4_MinGW_w64]

Unpack the archive. Add "bin" to the system PATH environment variable.

![5_MinGW_w64_text][5_MinGW_w64]
![6_MinGW_w64_text][6_MinGW_w64]

### 3. CMake.

Follow this [link][CMake]. Navigate to "Binary distributions:" -> "Windows x64 ZIP" -> "cmake-3.30.0-windows-x86_64.zip". Download the archive.

![7_CMake_text][7_CMake]

Unpack the archive. Add "bin" to the system PATH environment variable.

![8_CMake_text][8_CMake]
![9_CMake_text][9_CMake]

### 4. OpenOCD.

Follow this [link][OpenOCD]. Navigate to the latest release -> "Assets" -> "openocd-v0.12.0-i686-w64-mingw32.tar.gz". Download the archive.

![10_OpenOCD_text][10_OpenOCD]

Unpack the archive. Add "bin" to the system PATH environment variable.

![11_OpenOCD_text][11_OpenOCD]
![12_OpenOCD_text][12_OpenOCD]

### 5. STM32CubeMX.

Follow this [link][STM32CubeMX]. Navigate to "STM32CubeMX-Win" -> "Get latest". Download the archive.

![13_STM32CubeMX_text][13_STM32CubeMX]

Unpack the archive. Install STM32CubeMX.

### 6. ST-LINK driver.

Follow this [link][ST-LINK driver]. Navigate to "STSW-LINK009" -> "Get latest". Download the archive.

![14_ST_LINK_driver_text][14_ST_LINK_driver]

Unpack the archive. Install ST-Link driver.

### 7. System View Description.

Go to the official web page of your STM32 microcontroller. Navigate to "CAD Resources" -> "All resources" -> "System View Description". For STM32F103C8T6 follow this [link][System View Description]. Navigate to "STM32F1 System View Description". Download the archive.

![15_System_View_Description_text][15_System_View_Description]

Unpack the archive. Navigate to "STM32F1_svd_V1.2" and select "STM32F103.svd" file.

![16_System_View_Description_text][16_System_View_Description]

Copy "STM32F103.svd" file into your project folder.

![17_System_View_Description_text][17_System_View_Description]

### 8. PVS-Studio.

Follow this [link][PVS-Studio]. Navigate to "Choose platform", select "Windows" and click "Next".

![18_PVS_Studio_text][18_PVS_Studio]

Navigate to "Choose language", select "C, C++" and click "Next".

![19_PVS_Studio_text][19_PVS_Studio]

Navigate to "Installation choices" and click "Download". Download the installer.

![20_PVS_Studio_text][20_PVS_Studio]

Install PVS-Studio.

### 9. Visual Studio Code.

Follow this [link][VSCode]. Navigate to "Download for Windows". Download the installer.

![21_Visual_Studio_Code_text][21_Visual_Studio_Code]

Install Visual Studio Code.

### 10. "C/C++" VSCode extension.

Follow this [link][C/C++ VSCode extension]. Or open VSCode, navigate to "Extensions", type "C/C++" into the search bar and click "Install".

![22_C_VSCode_extension_text][22_C_VSCode_extension]

### 11. "CMake Tools" VSCode extension.

Follow this [link][CMake Tools]. Or open VSCode, navigate to "Extensions", type "CMake Tools" into the search bar and click "Install".

![23_CMake_Tools_VSCode_extension_text][23_CMake_Tools_VSCode_extension]

### 12. "Cortex-Debug" VSCode extension.

Follow this [link][Cortex-Debug]. Or open VSCode, navigate to "Extensions", type "Cortex-Debug" into the search bar and click "Install".

![24_Cortex_Debug_VSCode_extension_text][24_Cortex_Debug_VSCode_extension]

### 13. "PVS-Studio" VSCode extension.

Follow this [link][PVS-Studio Extension]. Or open VSCode, navigate to "Extensions", type "PVS-Studio" into the search bar and click "Install".

![25_PVS_Studio_VSCode_extension_text][25_PVS_Studio_VSCode_extension]

### 14. "Todo Tree" VSCode extension.

Follow this [link][Todo Tree]. Or open VSCode, navigate to "Extensions", type "Todo Tree" into the search bar and click "Install".

![26_Todo_Tree_VSCode_extension_text][26_Todo_Tree_VSCode_extension]

### 15. "Doxygen Documentation Generator" VSCode extension.

Follow this [link][Doxygen Documentation Generator]. Or open VSCode, navigate to "Extensions", type "Doxygen Documentation Generator" into the search bar and click "Install".

![27_Doxygen_Documentation_Generator_VSCode_extension_text][27_Doxygen_Documentation_Generator_VSCode_extension]

## Configuration

### 1. Generate initialization source code with STM32CubeMX.

Open ST32CubeMX.

![28_Generate_code_text][28_Generate_code]

Navigate to "File" -> "New Project …".

![29_Generate_code_text][29_Generate_code]

Select your STM32 microcontroller. Navigate to "Commercial Part Number" and type "STM32F103C8T6". Navigate to "MCUs/MPUs List" -> "STM32F103C8T6". Click "Start Project".

![30_Generate_code_text][30_Generate_code]

Enable Serial Wire Debug interface. Navigate to "Pinout & Configuration" -> "Categories" -> "System Core" -> "Sys" -> "SYS Mode and Configuration" -> "Mode" -> "Debug" and select "Serial Wire".

![31_Generate_code_text][31_Generate_code]

Configure specific general-purpose input/output port as output push-pull to drive an LED. On my development board pin PC13 is connected to an LED. Click on pin PC13 and select "GPIO_Output".

![32_Generate_code_text][32_Generate_code]

Navigate to "Pinout & Configuration" -> "Categories" -> "System Core" -> "GPIO" -> "GPIO Mode and Configuration" -> "Configuration" -> "GPIO" -> "Pin Name" -> "PC13-TAMPER-RTC" -> "PC13-TAMPER-RTC Configuration" -> "User Label" and enter "LED".

![33_Generate_code_text][33_Generate_code]

Choose your project name. Navigate to "Project Manager" -> "Project" -> "Project Name" and enter "STM32_VSCode_CMake_Windows_Tutorial". Navigate to "Project Location" and enter the path, where the new project folder will be created. The result project path is displayed in "Toolchain Folder Location".

Choose your IDE / build tool. Navigate to "Toolchain / IDE" and select "CMake".

![34_Generate_code_text][34_Generate_code]

Configure code generator settings. Navigate to "Project Manager" -> "Code Generator" -> "STM32Cube MCU packages and embedded software packs" and select "Copy only the necessary library files".

Navigate to "Project Manager" -> "Code Generator" -> "Generated files" and select "Generate peripheral initialization as a pair of '.c/.h' files per peripheral".

![35_Generate_code_text][35_Generate_code]

Click "GENERATE CODE".

![36_Generate_code_text][36_Generate_code]

### 2. Write an LED driver in VSCode.

Open your project folder in VSCode.

![37_Write_LED_driver_text][37_Write_LED_driver]

Create a new folder "App" for your application code. Inside it create a folder "inc" for headers and a folder "src" for source files.

![38_Write_LED_driver_text][38_Write_LED_driver]

Write a header for an LED driver. Create a new file "led.h" inside "App\inc" folder with these contents:

```
#ifndef INC_LED_H_
#define INC_LED_H_


void led_toggle();


#endif
```

![39_Write_LED_driver_text][39_Write_LED_driver]

Write a source file for an LED driver. Create a new file "led.c" inside "App\src" folder with these contents:

```
#include "main.h"

#include "led.h"


void led_toggle()
{
    HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
}
```

![40_Write_LED_driver_text][40_Write_LED_driver]

Open "Core\Src\main.c". Include our "led.h" header:

```
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "led.h"
/* USER CODE END Includes */
```

![41_Write_LED_driver_text][41_Write_LED_driver]

Call our `led_toggle` function inside `main` and add a 1 second delay:

```
/* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    led_toggle();
    HAL_Delay(1000);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
```

![42_Write_LED_driver_text][42_Write_LED_driver]

### 3. Configure CMake and build tasks.

CMake is a build system that can use different generators to build a project. A specific generator is selected in "CMakePresets.json" file. A default  "CMakePresets.json" was generated by STM32CubeMX for our project. STM32CubeMX selects "Ninja" as a generator by default. "CMakePresets.json" must be modified to use "MinGW Makefiles" instead. Open "CMakePresets.json", navigate to "configurePresets" -> "generator" and change "Ninja" to "MinGW Makefiles":

```
"configurePresets": [
        {
            "name": "default",
            "hidden": true,
            "generator": "MinGW Makefiles",
            "binaryDir": "${sourceDir}/build/${presetName}",
		    "toolchainFile": "${sourceDir}/cmake/gcc-arm-none-eabi.cmake",
            "cacheVariables": {
            }
        },
```

![43_Configure_build_tasks_text][43_Configure_build_tasks]

CMake is a build system that uses "CMakeLists.txt" file to build a project. A default "CMakeLists.txt" was generated by STM32CubeMX for our project. But now "CMakeLists.txt" must be modified because custom folders "App\inc" and "App\src" were added to the project.

Open "CMakeLists.txt" and add "App\inc" folder to user defined include paths:

```
# Add include paths
target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE
    # Add user defined include paths
    App/inc
)
```

![44_Configure_build_tasks_text][44_Configure_build_tasks]

Add all source files in "App\src" folder to user sources:

```
# Add sources to executable
file(GLOB_RECURSE CUSTOM_SOURCES "App/src/*.c")
target_sources(${CMAKE_PROJECT_NAME} PRIVATE
    # Add user sources here
    ${CUSTOM_SOURCES}
)
```

![45_Configure_build_tasks_text][45_Configure_build_tasks]

After these changes are made, configure VSCode's "CMake Tools" extension. Navigate to "Cmake" panel -> "PROJECT STATUS" and click "Delete Cache and Reconfigure".

![46_Configure_build_tasks_text][46_Configure_build_tasks]

Select "Debug" preset.

![47_Configure_build_tasks_text][47_Configure_build_tasks]

"CMake Tools" extension provides "CMake: Build" and "CMake: Clean Rebuild" commands to build a project. Later these commands must be used inside VSCode tasks. Unfortunately, these commands were not designed to be wrapped inside VSCode tasks. That's why our custom VSCode build tasks must be created manually.

Create a new folder ".vscode". Inside it create a "tasks.json" file with these contents:

```
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks":
    [
        {
            "label": "cmake clean",
            "command": "cmake",
            "args":
            [
                "--build",
                "${command:cmake.getLaunchTargetDirectory}",
                "--target",
                "clean",
            ],
            "group":
            {
                "kind": "build",
                "isDefault": false
            },
            "options":
            {
                "cwd": "${workspaceFolder}"
            },
        },
        {
            "label": "cmake build",
            "command": "cmake",
            "args":
            [
                "--build",
                "${command:cmake.getLaunchTargetDirectory}",
            ],
            "group":
            {
                "kind": "build",
                "isDefault": true
            },
            "options":
            {
                "cwd": "${workspaceFolder}"
            },
        },
        {
            "label": "cmake rebuild",
            "group":
            {
                "kind": "build",
                "isDefault": false
            },
            "dependsOrder": "sequence",
            "dependsOn": ["cmake clean", "cmake build"],
            "options":
            {
                "cwd": "${workspaceFolder}"
            },
        },
    ]
}
```

![48_Configure_build_tasks_text][48_Configure_build_tasks]

Now these custom build tasks can be called to build our project. Navigate to "View" -> "Command Palette...", type "Tasks: Run Task" and select "cmake rebuild".

![49_Configure_build_tasks_text][49_Configure_build_tasks]
![50_Configure_build_tasks_text][50_Configure_build_tasks]

Our project is build successfully.

![51_Configure_build_tasks_text][51_Configure_build_tasks]

### 4. Configure VSCode IntelliSense.

VSCode's "C/C++" extension provides real-time IntelliSense. But this extension does not know anything about our toolchain yet. That's why a lot of false errors are displayed in the "Problems" panel.

![52_Configure_IntelliSense_text][52_Configure_IntelliSense]

IntelliSense must be configured to get rid of these false errors. Inside ".vscode" folder create a "c_cpp_properties.json" file with these contents:

```
{
    "configurations": [
        {
            "name": "Cross GCC",
            "includePath": [
                "${workspaceFolder}\\App\\inc",
                "${workspaceFolder}\\Core\\Inc",
                "${workspaceFolder}\\Drivers\\STM32F1xx_HAL_Driver\\Inc",
                "${workspaceFolder}\\Drivers\\STM32F1xx_HAL_Driver\\Inc\\Legacy",
                "${workspaceFolder}\\Drivers\\CMSIS\\Device\\ST\\STM32F1xx\\Include",
                "${workspaceFolder}\\Drivers\\CMSIS\\Include"
            ],
            "defines": [
                "USE_HAL_DRIVER",
                "STM32F103xB"
            ],
            "compilerPath": "c:\\Program Files\\arm-gnu-toolchain-13.3.rel1-mingw-w64-i686-arm-none-eabi\\bin\\arm-none-eabi-gcc.exe",
            "cStandard": "c17",
            "cppStandard": "c++17",
            "intelliSenseMode": "gcc-arm"
        }
    ],
    "version": 4
}
```

![53_Configure_IntelliSense_text][53_Configure_IntelliSense]

Include paths and defines can be copied from "CMakeLists.txt" and "cmake\stm32cubemx\CMakeLists.txt" files.

![54_Configure_IntelliSense_text][54_Configure_IntelliSense]
![55_Configure_IntelliSense_text][55_Configure_IntelliSense]

Now there are no false errors in the "Problems" panel.

![56_Configure_IntelliSense_text][56_Configure_IntelliSense]

### 5. Configure download and reset tasks.

Separate VSCode tasks must be created to download our program to the microcontroller and to reset the microcontroller. Add the following tasks to "\.vscode\tasks.json" file:

```
{
    "label": "openocd download",
    "type": "shell",
    "command": "openocd",
    "args":
    [
        "-f",
        "interface/stlink-dap.cfg",
        "-f",
        "target/stm32f1x.cfg",
        "-c",
        "program build/Debug/${command:cmake.getLaunchTargetFilename} verify reset exit"
    ],
    "group":
    {
        "kind": "none",
        "isDefault": false
    },
    "dependsOn": "cmake build",
    "options":
    {
        "cwd": "${workspaceFolder}"
    },
    "problemMatcher": [],
},
{
    "label": "openocd reset",
    "type": "shell",
    "command": "openocd",
    "args":
    [
        "-f",
        "interface/stlink-dap.cfg",
        "-f",
        "target/stm32f1x.cfg",
        "-c",
        "init; reset; exit"
    ],
    "group":
    {
        "kind": "none",
        "isDefault": false
    },
    "options":
    {
        "cwd": "${workspaceFolder}"
    },
    "problemMatcher": [],
},
```

![57_Configure_download_and_reset_tasks_text][57_Configure_download_and_reset_tasks]

Now these custom tasks can be called to download our program to the microcontroller and to reset the microcontroller. Connect your debugger to your development board. Then connect the debugger to your PC's USB port.

![58_Configure_download_and_reset_tasks_text][58_Configure_download_and_reset_tasks]

Navigate to "View" -> "Command Palette...", type "Tasks: Run Task" and select "openocd download".

![59_Configure_download_and_reset_tasks_text][59_Configure_download_and_reset_tasks]

The program is downloaded to our microcontroller successfully.

![60_Configure_download_and_reset_tasks_text][60_Configure_download_and_reset_tasks]

<video controls muted src="video/Downloaded_program.mp4"></video>

### 6. Configure debugger.

VSCode's "Cortex-Debug" extension provides the ability to debug ARM Cortex-M microcontrollers. A separate launch configuration must be created to use the debugger.

Inside ".vscode" folder create a "launch.json" file with these contents:

```
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations":
    [
        {
            "name": "openocd debug",
            "type": "cortex-debug",
            "request": "launch",
            "servertype": "openocd",
            "configFiles":
            [
                "interface/stlink-dap.cfg",
                "target/stm32f1x.cfg"
            ],
            "searchDir": [],
            "executable": "${command:cmake.getLaunchTargetPath}",
            "svdFile": "STM32F103.svd",
            "runToEntryPoint": "main",
            "showDevDebugOutput": "none",
            "liveWatch":
            {
                "enabled": true,
                "samplesPerSecond": 1
            },
            "preLaunchTask": "cmake build",
            "postDebugTask": "openocd reset",
            "cwd": "${workspaceFolder}"
        }
    ]
}
```

![61_Configure_debugger_text][61_Configure_debugger]

To start debugging navigate to "Run and Debug" panel and click the green "Play" button.

![62_Configure_debugger_text][62_Configure_debugger]

The debugger is launched successfully.

![63_Configure_debugger_text][63_Configure_debugger]

### 7. Configure PVS-Studio.

PVS-Studio is a static code analyzer. To use PVS-Studio a free licence must be activated. Navigate to "PVS-Studio" panel -> "Open settings" -> "License" -> "User name" and enter "PVS-Studio Free". Navigate to "Key" and enter "FREE-FREE-FREE-FREE". Click "Activate".

![64_Configure_PVS_Studio_text][64_Configure_PVS_Studio]

Also, the following lines must be added to the beginning of every .c file in our project:

```
// This is an independent project of an individual developer. Dear PVS-Studio, please check it.
// PVS-Studio Static Code Analyzer for C, C++, C#, and Java: https://pvs-studio.com
```

To automatically add these lines to the beginning of every .c file in our project, create "pvs_add_header.ps1" PowerShell script with these contents:

```
function pvs_add_header {
    param (
        [Parameter(Mandatory=$true)]
        [string]$current_directory
    )

    $line1 = "// This is an independent project of an individual developer. Dear PVS-Studio, please check it.`r`n"
    $line2 = "// PVS-Studio Static Code Analyzer for C, C++, C#, and Java: https://pvs-studio.com`r`n"
    $lines = $line1 + $line2

    $c_files = Get-ChildItem -Path $current_directory -Filter "*.c" -Recurse -File
    
    foreach ($c_file in $c_files) {
        try {
            $content = Get-Content -Path $c_file.FullName -Raw
            $content_with_lines = $lines + $content
            Set-Content -Path $c_file.FullName -Value $content_with_lines -Force
            Write-Output "Added to $($c_file.FullName)"
        }
        catch {
            Write-Error "Error processing $($c_file.FullName): $_"
        }
    }

    Write-Output "All files have been processed."
}

pvs_add_header -current_directory (Get-Location)
```

![65_Configure_PVS_Studio_text][65_Configure_PVS_Studio]

To automatically remove previously added lines from every .c file in our project, create "pvs_remove_header.ps1" PowerShell scipt with these contents:

```
function pvs_remove_header {
    param (
        [Parameter(Mandatory=$true)]
        [string]$current_directory
    )

    $line1 = "// This is an independent project of an individual developer. Dear PVS-Studio, please check it."
    $line2 = "// PVS-Studio Static Code Analyzer for C, C++, C#, and Java: https://pvs-studio.com"

    $c_files = Get-ChildItem -Path $current_directory -Filter "*.c" -Recurse -File

    foreach ($c_file in $c_files) {
        try {
            $content = Get-Content -Path $c_file.FullName -Raw
            $content_lines = $content -split "`r?`n"
            if (($content_lines.Count -ge 2) -and ($content_lines[0] -eq $line1) -and ($content_lines[1] -eq $line2)) {
                $content_without_lines = $content_lines[2..($content_lines.Count - 1)] -join "`r`n"
                Set-Content -Path $c_file.FullName -Value $content_without_lines -Force
                Write-Output "Removed from $($c_file.FullName)"
            }
        }
        catch {
            Write-Error "Error processing $($c_file.FullName): $_"
        }
    }

    Write-Output "All files have been processed."
}

pvs_remove_header -current_directory (Get-Location)
```

![66_Configure_PVS_Studio_text][66_Configure_PVS_Studio]

Separate VSCode tasks can be created to call these PowerShell scripts. Add the following tasks to "\.vscode\tasks.json" file:

```
{
    "label": "pvs add header",
    "type": "shell",
    "command": ".\\pvs_add_header.ps1",
    "group":
    {
        "kind": "none",
        "isDefault": false
    },
    "options":
    {
        "cwd": "${workspaceFolder}"
    },
    "problemMatcher": [],
},
{
    "label": "pvs remove header",
    "type": "shell",
    "command": ".\\pvs_remove_header.ps1",
    "group":
    {
        "kind": "none",
        "isDefault": false
    },
    "options":
    {
        "cwd": "${workspaceFolder}"
    },
    "problemMatcher": [],
},
```

![67_Configure_PVS_Studio_text][67_Configure_PVS_Studio]

To automatically add desired lines to the beginning of every .c file in our project run our custom "pvs add header" task. Navigate to "View" -> "Command Palette...", type "Tasks: Run Task" and select "pvs add header".

![68_Configure_PVS_Studio_text][68_Configure_PVS_Studio]

Desired lines were automatically added to the beginning of every .c file in our project.

![69_Configure_PVS_Studio_text][69_Configure_PVS_Studio]

To analyze our project navigate to "PVS-Studio" panel, click "Start analysis" and select "Regular analysis".

![70_Configure_PVS_Studio_text][70_Configure_PVS_Studio]

Our project is analyzed successfully.

![71_Configure_PVS_Studio_text][71_Configure_PVS_Studio]

To automatically remove previously added lines from every .c file in our project run our custom "pvs remove header" task. Navigate to "View" -> "Command Palette...", type "Tasks: Run Task" and select "pvs remove header".

![72_Configure_PVS_Studio_text][72_Configure_PVS_Studio]

Previously added lines were automatically removed from every .c file in our project.

![73_Configure_PVS_Studio_text][73_Configure_PVS_Studio]




[Arm GNU Toolchain]: https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
[MinGW-w64]: https://github.com/skeeto/w64devkit/releases
[CMake]: https://cmake.org/download/#latest
[OpenOCD]: https://github.com/openocd-org/openocd/releases
[STM32CubeMX]: https://www.st.com/en/development-tools/stm32cubemx.html#st-get-software
[ST-LINK driver]: https://www.st.com/en/development-tools/stsw-link009.html#get-software
[System View Description]: https://www.st.com/en/microcontrollers-microprocessors/stm32f103c8.html#cad-resources 
[PVS-Studio]: https://pvs-studio.com/en/pvs-studio/download/
[VSCode]: https://code.visualstudio.com/
[C/C++ VSCode extension]: https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
[CMake Tools]: https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools
[Cortex-Debug]: https://marketplace.visualstudio.com/items?itemName=marus25.cortex-debug
[PVS-Studio Extension]: https://marketplace.visualstudio.com/items?itemName=EvgeniyRyzhkov.pvs-studio-vscode
[Todo Tree]: https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree
[Doxygen Documentation Generator]: https://marketplace.visualstudio.com/items?itemName=cschlosser.doxdocgen


[1_Arm_GNU_Toolchain]: images/1_Arm_GNU_Toolchain.png
[2_Arm_GNU_Toolchain]: images/2_Arm_GNU_Toolchain.png
[3_Arm_GNU_Toolchain]: images/3_Arm_GNU_Toolchain.png
[4_MinGW_w64]: images/4_MinGW_w64.png
[5_MinGW_w64]: images/5_MinGW_w64.png
[6_MinGW_w64]: images/6_MinGW_w64.png
[7_CMake]: images/7_CMake.png
[8_CMake]: images/8_CMake.png
[9_CMake]: images/9_CMake.png
[10_OpenOCD]: images/10_OpenOCD.png
[11_OpenOCD]: images/11_OpenOCD.png
[12_OpenOCD]: images/12_OpenOCD.png
[13_STM32CubeMX]: images/13_STM32CubeMX.png
[14_ST_LINK_driver]: images/14_ST_LINK_driver.png
[15_System_View_Description]: images/15_System_View_Description.png
[16_System_View_Description]: images/16_System_View_Description.png
[17_System_View_Description]: images/17_System_View_Description.png
[18_PVS_Studio]: images/18_PVS_Studio.png
[19_PVS_Studio]: images/19_PVS_Studio.png
[20_PVS_Studio]: images/20_PVS_Studio.png
[21_Visual_Studio_Code]: images/21_Visual_Studio_Code.png
[22_C_VSCode_extension]: images/22_C_VSCode_extension.png
[23_CMake_Tools_VSCode_extension]: images/23_CMake_Tools_VSCode_extension.png
[24_Cortex_Debug_VSCode_extension]: images/24_Cortex_Debug_VSCode_extension.png
[25_PVS_Studio_VSCode_extension]: images/25_PVS_Studio_VSCode_extension.png
[26_Todo_Tree_VSCode_extension]: images/26_Todo_Tree_VSCode_extension.png
[27_Doxygen_Documentation_Generator_VSCode_extension]: images/27_Doxygen_Documentation_Generator_VSCode_extension.png
[28_Generate_code]: images/28_Generate_code.png
[29_Generate_code]: images/29_Generate_code.png
[30_Generate_code]: images/30_Generate_code.png
[31_Generate_code]: images/31_Generate_code.png
[32_Generate_code]: images/32_Generate_code.png
[33_Generate_code]: images/33_Generate_code.png
[34_Generate_code]: images/34_Generate_code.png
[35_Generate_code]: images/35_Generate_code.png
[36_Generate_code]: images/36_Generate_code.png
[37_Write_LED_driver]: images/37_Write_LED_driver.png
[38_Write_LED_driver]: images/38_Write_LED_driver.png
[39_Write_LED_driver]: images/39_Write_LED_driver.png
[40_Write_LED_driver]: images/40_Write_LED_driver.png
[41_Write_LED_driver]: images/41_Write_LED_driver.png
[42_Write_LED_driver]: images/42_Write_LED_driver.png
[43_Configure_build_tasks]: images/43_Configure_build_tasks.png
[44_Configure_build_tasks]: images/44_Configure_build_tasks.png
[45_Configure_build_tasks]: images/45_Configure_build_tasks.png
[46_Configure_build_tasks]: images/46_Configure_build_tasks.png
[47_Configure_build_tasks]: images/47_Configure_build_tasks.png
[48_Configure_build_tasks]: images/48_Configure_build_tasks.png
[49_Configure_build_tasks]: images/49_Configure_build_tasks.png
[50_Configure_build_tasks]: images/50_Configure_build_tasks.png
[51_Configure_build_tasks]: images/51_Configure_build_tasks.png
[52_Configure_IntelliSense]: images/52_Configure_IntelliSense.png
[53_Configure_IntelliSense]: images/53_Configure_IntelliSense.png
[54_Configure_IntelliSense]: images/54_Configure_IntelliSense.png
[55_Configure_IntelliSense]: images/55_Configure_IntelliSense.png
[56_Configure_IntelliSense]: images/56_Configure_IntelliSense.png
[57_Configure_download_and_reset_tasks]: images/57_Configure_download_and_reset_tasks.png
[58_Configure_download_and_reset_tasks]: images/58_Configure_download_and_reset_tasks.png
[59_Configure_download_and_reset_tasks]: images/59_Configure_download_and_reset_tasks.png
[60_Configure_download_and_reset_tasks]: images/60_Configure_download_and_reset_tasks.png
[61_Configure_debugger]: images/61_Configure_debugger.png
[62_Configure_debugger]: images/62_Configure_debugger.png
[63_Configure_debugger]: images/63_Configure_debugger.png
[64_Configure_PVS_Studio]: images/64_Configure_PVS_Studio.png
[65_Configure_PVS_Studio]: images/65_Configure_PVS_Studio.png
[66_Configure_PVS_Studio]: images/66_Configure_PVS_Studio.png
[67_Configure_PVS_Studio]: images/67_Configure_PVS_Studio.png
[68_Configure_PVS_Studio]: images/68_Configure_PVS_Studio.png
[69_Configure_PVS_Studio]: images/69_Configure_PVS_Studio.png
[70_Configure_PVS_Studio]: images/70_Configure_PVS_Studio.png
[71_Configure_PVS_Studio]: images/71_Configure_PVS_Studio.png
[72_Configure_PVS_Studio]: images/72_Configure_PVS_Studio.png
[73_Configure_PVS_Studio]: images/73_Configure_PVS_Studio.png