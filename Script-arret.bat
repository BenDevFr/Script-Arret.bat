@echo off
rem Désactive l'affichage des commandes exécutées---

title Arret complet de Windows
rem Titre de la fenetre---

set count=6
rem Compteur en secondes avant l'execution du shutdown---


:dec
rem Début de la boucle de décrémentation---
set /a count = %count% - 1
rem Décrémentation de 1 à la variable "count" (équivalant a -1 seconde)---

echo.
echo Windows va s'arreter dans %count%s
echo.
rem Texte indiquant le temps restant avant la fin du compteur---

if %count%==0 goto shut
rem Fin de la boucle et passage à la boucle "shut" lorsque le compteur arrive a zéro---

timeout /t 01>nul
rem Pause de 1 seconde---

cls
rem Efface l'écran pour faire propre---

goto dec
rem Si le compteur n'a pas atteint zéro retour au début de la boucle "dec"---



:shut
rem Début de la boucle d'execution du shutdown---

cls
rem Clear---

echo.
echo Windows va maintenant s'arreter...
echo.
rem Texte indiquant l'arret de windows---

timeout /t 01>nul
rem Pause de 1 seconde---

shutdown /s /f
rem Execution de la commande shutdown. /s = Arret de l'ordinateur /f = Forcer la fermeture des applications en cours d'execution sans avertissement---

cls
rem Clear---

echo A bientot %username%
rem Texte personnalisé---

timeout /t 10>nul
rem Pause de 10 secondes---

exit
rem Fin du script---
