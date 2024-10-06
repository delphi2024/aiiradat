@echo off
del *.~* /s
del *.dcu /s
del *.map /s
del *.ddp /s
del *.dti /s
del *.dof /s
del *.cfg /s
del *.bak /s
del *.stat /s
echo Clean Delphi xe files...
del *.local /s
del *.identcache /s
del *.2007 /s
del *.tvsconfig /s
attrib __history -h
rd __history /s /q



cls

exit