#!bin/bin
# Оголошуємо масив сайтів
sites=("https://www.google.com" "https://www.facebook.com" "https://www.twitter.com")

# Вказуємо ім'я файлу логів
log_file="results.txt"

# Отримуємо поточну дату і час
current_datetime=$(date '+%Y-%m-%d %H:%M:%S')

# Записуємо дату і час у файл результатів
echo "    Test at: $current_datetime" >> "$log_file"

echo ${sites[@]}
for site in ${sites[@]}; do
  response=$(curl -s --head --request GET "$site" | grep "HTTP/2 200")
    # Перевіряємо результат і записуємо інтерпретований результат у файл
    if [[ -n "$response" ]]; then
        echo "[$site]($site) is UP" >> "$log_file"
    else
        echo "[$site]($site) is DOWN" >> "$log_file"
    fi
done

# Виводимо повідомлення
echo "Результати зережено в: $log_file"
