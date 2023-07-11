#!/bin/bash

input_file="xato-net-10-million-usernames.txt"    # Имя файла со словарем
output_file="xato-net-10-million-usernames_base.txt"  # Имя файла, в который будут записаны результаты

while IFS= read -r line; do
    base64_line=$(echo -n "$line" | base64)
    echo "$base64_line" >> "$output_file"
done < "$input_file"

echo "Преобразование словаря в Base64 завершено."
