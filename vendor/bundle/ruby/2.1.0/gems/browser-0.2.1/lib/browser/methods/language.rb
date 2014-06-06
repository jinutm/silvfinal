class Browser
  module Language
    LANGUAGES = {
      "af"    => "Afrikaans",
      "sq"    => "Albanian",
      "eu"    => "Basque",
      "bg"    => "Bulgarian",
      "be"    => "Byelorussian",
      "ca"    => "Catalan",
      "zh"    => "Chinese",
      "zh-cn" => "Chinese/China",
      "zh-tw" => "Chinese/Taiwan",
      "zh-hk" => "Chinese/Hong Kong",
      "zh-sg" => "Chinese/singapore",
      "hr"    => "Croatian",
      "cs"    => "Czech",
      "da"    => "Danish",
      "nl"    => "Dutch",
      "nl-nl" => "Dutch/Netherlands",
      "nl-be" => "Dutch/Belgium",
      "en"    => "English",
      "en-gb" => "English/United Kingdom",
      "en-us" => "English/United States",
      "en-au" => "English/Australian",
      "en-ca" => "English/Canada",
      "en-nz" => "English/New Zealand",
      "en-ie" => "English/Ireland",
      "en-za" => "English/South Africa",
      "en-jm" => "English/Jamaica",
      "en-bz" => "English/Belize",
      "en-tt" => "English/Trinidad",
      "et"    => "Estonian",
      "fo"    => "Faeroese",
      "fa"    => "Farsi",
      "fi"    => "Finnish",
      "fr"    => "French",
      "fr-be" => "French/Belgium",
      "fr-fr" => "French/France",
      "fr-ch" => "French/Switzerland",
      "fr-ca" => "French/Canada",
      "fr-lu" => "French/Luxembourg",
      "gd"    => "Gaelic",
      "gl"    => "Galician",
      "de"    => "German",
      "de-at" => "German/Austria",
      "de-de" => "German/Germany",
      "de-ch" => "German/Switzerland",
      "de-lu" => "German/Luxembourg",
      "de-li" => "German/Liechtenstein",
      "el"    => "Greek",
      "he"    => "Hebrew",
      "he-il" => "Hebrew/Israel",
      "hi"    => "Hindi",
      "hu"    => "Hungarian",
      "ie-ee" => "Internet Explorer/Easter Egg",
      "is"    => "Icelandic",
      "id"    => "Indonesian",
      "in"    => "Indonesian",
      "ga"    => "Irish",
      "it"    => "Italian",
      "it-ch" => "Italian/ Switzerland",
      "ja"    => "Japanese",
      "km"    => "Khmer",
      "km-kh" => "Khmer/Cambodia",
      "ko"    => "Korean",
      "lv"    => "Latvian",
      "lt"    => "Lithuanian",
      "mk"    => "Macedonian",
      "ms"    => "Malaysian",
      "mt"    => "Maltese",
      "no"    => "Norwegian",
      "pl"    => "Polish",
      "pt"    => "Portuguese",
      "pt-br" => "Portuguese/Brazil",
      "rm"    => "Rhaeto-Romanic",
      "ro"    => "Romanian",
      "ro-mo" => "Romanian/Moldavia",
      "ru"    => "Russian",
      "ru-mo" => "Russian /Moldavia",
      "gd"    => "Scots Gaelic",
      "sr"    => "Serbian",
      "sk"    => "Slovack",
      "sl"    => "Slovenian",
      "sb"    => "Sorbian",
      "es"    => "Spanish",
      "es-do" => "Spanish",
      "es-ar" => "Spanish/Argentina",
      "es-co" => "Spanish/Colombia",
      "es-mx" => "Spanish/Mexico",
      "es-es" => "Spanish/Spain",
      "es-gt" => "Spanish/Guatemala",
      "es-cr" => "Spanish/Costa Rica",
      "es-pa" => "Spanish/Panama",
      "es-ve" => "Spanish/Venezuela",
      "es-pe" => "Spanish/Peru",
      "es-ec" => "Spanish/Ecuador",
      "es-cl" => "Spanish/Chile",
      "es-uy" => "Spanish/Uruguay",
      "es-py" => "Spanish/Paraguay",
      "es-bo" => "Spanish/Bolivia",
      "es-sv" => "Spanish/El salvador",
      "es-hn" => "Spanish/Honduras",
      "es-ni" => "Spanish/Nicaragua",
      "es-pr" => "Spanish/Puerto Rico",
      "sx"    => "Sutu",
      "sv"    => "Swedish",
      "sv-se" => "Swedish/Sweden",
      "sv-fi" => "Swedish/Finland",
      "ts"    => "Thai",
      "tn"    => "Tswana",
      "tr"    => "Turkish",
      "uk"    => "Ukrainian",
      "ur"    => "Urdu",
      "vi"    => "Vietnamese",
      "xh"    => "Xshosa",
      "ji"    => "Yiddish",
      "zu"    => "Zulu"
    }

    # Set browser's preferred language
    attr_writer :accept_language

    # Return an array with all preferred languages that this browser accepts.
    def accept_language
      @accept_language
        .gsub(/;q=[\d.]+/, "")
        .split(",")
        .collect {|l| l.downcase.gsub(/\s/m, "")}
    end
  end
end
