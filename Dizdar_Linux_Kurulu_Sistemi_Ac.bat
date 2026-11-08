@echo off
title Dizdar Linux (Kurulu Kalici Sistem)
echo ====================================================
echo        Dizdar Linux (Kurulu Sabit Disk)
echo ====================================================
echo.
echo Bu mod dogrudan sanal diske kurulmus Dizdar Linux sistemini acar.
echo Yaptiginiz tum degisiklikler, guncellemeler ve dosyalar kalicidir.
echo.
echo Onceki acik sanal makine varsa kapatiliyor...
taskkill /F /IM qemu-system-x86_64.exe >nul 2>&1
timeout /t 1 >nul 2>&1

echo.
echo Kisayollar:
echo   - Fareyi iceri kilitlemek: Ctrl + Alt + G
echo   - Tam ekran yapmak:       Ctrl + Alt + F
echo   - Fareden cikmak:         Ctrl + Alt
echo.
echo Kurulu Dizdar Linux baslatiliyor...
echo.
start "" "C:\Users\Dizdar\qemu\qemu-system-x86_64.exe" -m 4096 -smp 4 -hda "D:\Projeler\dizdar-linux-builder\dizdar_disk.qcow2" -vga virtio -usb -device usb-tablet -accel tcg,thread=multi -display sdl
