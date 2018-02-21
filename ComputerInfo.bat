net use b: \\Shared\Folder\Path\Here
b:
echo --------------- vvvvv Info from %DATE% at %TIME% vvvvv---------------  >> %computername%.txt
wmic bios get serialnumber /format:list | more >> %computername%.txt | more
wmic computersystem get systemskunumber /format:list | more >> %computername%.txt | more
wmic path softwarelicensingservice get OA3xOriginalProductKey /format:list | more >> %computername%.txt | more
wmic netlogin get name /format:list | more >> %computername%.txt | more
wmic computersystem get model,name,manufacturer,systemtype /format:list | more  >> %computername%.txt | more
wmic cpu get name /format:list | more  >> %computername%.txt | more 
wmic memorychip get capacity /format:list | more  >> %computername%.txt | more 
wmic os get name /format:list | more  >> %computername%.txt | more
wmic os get "serialnumber" /format:list | more  >> %computername%.txt | more
wmic nicconfig where ipenabled=true get ipaddress,macaddress,description /format:list | more  >> %computername%.txt | more 
wmic product get name, version  | more  >> %computername%.txt | more
wmic net use get name | more  >> %computername%.txt | more
wmic logicaldisk get caption,description,drivetype,providername,volumename,size,freespace | more >> %computername%.txt | more
echo Printers:  >> %computername%.txt
wmic printer get name /value | more >> %computername%.txt | more 
dir c:\ | more >> %computername%.txt | more 
net use b: /delete /y
exit

 


