# MASM-IDE
#######################################################################
#              Script created by Abdullah S@1m on 14/9/2022           #
#######################################################################

!! Do not rename the file/folders given in this package !!
!! Turn off your antivirus/defender and add this folder to exclusion for the package to work properly !!

-> Save the .asm files created using text/code editor in "Assemble" folder (Make sure to give them unique name)
-> The "Outputs" folder contains the output files (.exe .lst etc.) that are created by the assembler/linker with the same name as souce file

Running instructions:
~To directly assemble and execute your .asm file, simply put it in the Assemble folder and run make32.bat by double clicking on it
~Choose the file you want by entering its name from shown available files in Assemble folder and press enter
~The script will run and display the output of the code directly in the command prompt

If you want to use VS Code as code editor with syntax highlighting features and integrated running funtionalities use VSConfig file given in the package
~Open this root folder in VS Code
~Install extention "MASM/TASM"
~Install Code runner extension (if you have not intalled already) and open it's settings
~Click Code-runner: Executor Map option's to Set the executor of each language. by editing the settings.json file
~Add the following line in the file to add assembly language
        "assembly": "cmd.exe /c VSConfig $fileNameWithoutExt"
~Save and reload VS Code. You will be able to edit and run Assembly language code directly from VS Code
