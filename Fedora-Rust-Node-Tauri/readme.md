Uses Fedora:Latest  
The devcontainer.json file creates the container then runs the accompanying script.  
The devcontainer-setup.sh file should be in the same directory and set executable (chmod +x)  
  
The script will install Rust, TypseScript, Tauri, and some helpful extensions.
  
There is a lot to install and this container will take several minutes to build.   
  
*Note: The current latest image for Fedora is 42 which seems to be missing awk and causes a crash. For that reason
this configuration uses Fedora 41*

