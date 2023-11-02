# mkportable
package your windows application to a single portable executabe in one click

install:  
just run mkp_install.cmd to add mkp and mkpn to "Send To" menu 

usage:  
create a directory with all your app's files in it, right click the executable  
and "Send To" either mkp (for apps requiring to run as admin)  
or to mkpn (apps with no need for admin rights)  
the output file will be generated in the app directory, named \<dir_name\>-sfx.exe  
   
alternatively, instead of installing using mkp_install.cmd, just open mkp or mkpn (whichever suitable for your app)   
and drag and drop the executable from your app directory into the mkp/n window  
  
 

please note: packing apps that needs admin rights using mkpn(no admin) will cause errors

the exe files in this release are just the scripts, packed using mkpn as well :)   

this software is using 7-zip sfx by Igor Pavlov,  
7-Zip is licensed under the GNU LGPL license    
feel free to visit www.7-zip.org for 7-zip source code.

this is a free software   
the author is not responsible whatsoever for any use or misuse of the software   
(C) Evgeni V. 2021, GNU LGPL license.

