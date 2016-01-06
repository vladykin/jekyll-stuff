module Jekyll
    module RussianDates
        MONTHS = {
            "01" => "января",
            "02" => "февраля",
            "03" => "марта",
            "04" => "апреля",
            "05" => "мая",
            "06" => "июня",
            "07" => "июля",
            "08" => "августа",
            "09" => "сентября",
            "10" => "октября",
            "11" => "ноября",
            "12" => "декабря"}

        def russian_date(date)
            time_value = time(date)
            day = time_value.strftime("%e") # leading zero is replaced by a space
            month = time_value.strftime("%m")
            year = time_value.strftime("%Y")
            return day + ' ' + MONTHS[month] + ' ' + year
        end
    end
end

Liquid::Template.register_filter(Jekyll::RussianDates)
