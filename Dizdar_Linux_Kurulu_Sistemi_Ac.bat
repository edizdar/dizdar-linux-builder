@echo off
title Dizdar Linux (Kurulu Kalici Sistem)
echo ====================================================
echo        Dizdar Linux (Kurulu Sabit Disk)
echo ====================================================
echo.
echo Onceki acik sanal makine kontrol ediliyor...
taskkill /F /IM qemu-system-x86_64.exe >nul 2>&1
timeout /t 1 >nul 2>&1

echo.
echo Kisayollar:
echo   - Fareyi iceri kilitlemek: Ctrl + Alt + G
echo   - Tam ekran yapmak:       Ctrl + Alt + F
echo   - Fareden cikmak:         Ctrl + Alt
echo.
echo Kurulu Dizdar Linux baslatiliyor, lutfen bekleyin...
echo (Bu konsol penceresi sanal makine acik kaldigi surece acik kalacaktir)
echo.
"C:\Users\Dizdar\qemu\qemu-system-x86_64.exe" -m 4096 -smp 4 -drive file="D:\Projeler\dizdar-linux-builder\dizdar_disk.qcow2",format=qcow2,cache=writeback -netdev user,id=net0,dns=8.8.8.8 -device virtio-net-pci,netdev=net0 -vga virtio -usb -device usb-tablet -accel tcg,thread=multi -display sdl
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ====================================================
    echo Hata: Sanal makine baslatilamadi (Kod: %ERRORLEVEL%).
    echo ====================================================
    echo.
    pause
)
