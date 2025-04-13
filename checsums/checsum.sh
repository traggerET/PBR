find . -type f \( -name "*.c" -o -name "*.h" \) -exec sha256sum {} \; > CHECSUMS.txt
