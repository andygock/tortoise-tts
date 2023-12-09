@echo off
where /q ConEmu64
if %errorlevel% equ 0 (
    start "" "ConEmu64" /cmd cmd /k "call conda activate tortoise && set TORTOISE_MODELS_DIR=.models"
    exit
) else (
  call conda activate tortoise
  set TORTOISE_MODELS_DIR=.models
  cmd.exe
  call conda deactivate
)