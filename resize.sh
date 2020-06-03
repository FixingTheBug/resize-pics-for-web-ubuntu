sudo apt install jpegoptim

tput setaf 2; read -p "What would you like to name the directory to store the resized pictures? " directory

tput sgr0;

mkdir $directory

for file in *.jpg
do
    jpegoptim --size=300k $file --dest ./$directory 
done
