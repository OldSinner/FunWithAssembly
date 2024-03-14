while getopts f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
    esac
done

echo "DELETING $file.bin"
rm $file.bin
echo "$file.asm BUILDING..."
nasm $file.asm
mv $file $file.bin
echo "$file.bin DONE"
./asmloader.exe $file.bin
echo
echo
echo
