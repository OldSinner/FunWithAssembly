while getopts f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
    esac
done
nasm $file.asm
mv $file $file.bin
./asmloader.exe $file.bin

echo
echo
echo

rm $file.bin