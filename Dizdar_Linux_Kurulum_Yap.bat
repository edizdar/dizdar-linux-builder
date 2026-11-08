@echo off
title Dizdar Linux Kurulum Modu (Sanal Disk)
echo ====================================================
echo      Dizdar Linux Kurulum Modu (Sanal Disk Bagli)
echo ====================================================
echo.
echo Onceki acik sanal makine varsa kapatiliyor...
taskkill /F /IM qemu-system-x86_64.exe >nul 2>&1
timeout /t 1 >nul 2>&1

echo.
echo Bu modda Dizdar Linux hem ISO hem de 40 GB temiz sanal sabit disk ile baslatilir.
echo Masaustundeki "Dizdar Linux'u Kur" simgesine cift tiklayarak sistemi
echo bu sanal diske kurabilir ve kalici sistem deneyimini test edebilirsiniz.
echo.
echo Kisayollar:
echo   - Fareyi iceri kilitlemek: Ctrl + Alt + G
echo   - Tam ekran yapmak:       Ctrl + Alt + F
echo   - Fareden cikmak:         Ctrl + Alt
echo.
echo QEMU baslatiliyor...
echo.
start "" "C:\Users\Dizdar\qemu\qemu-system-x86_64.exe" -m 4096 -smp 4 -hda "D:\Projeler\dizdar-linux-builder\dizdar_disk.qcow2" -cdrom "D:\Projeler\dizdar-linux-builder\binary.iso" -boot once=d -vga virtio -usb -device usb-tablet -accel tcg,thread=multi -display sdl
