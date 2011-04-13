# Completely dumb codename generator
module StormPointless
    
    # some color names
    COLOR = [
        "white","black","yellow","red","blue","brown","green",
        "purple","orange","silver","scarlet","rainbow","indigo",
        "ivory","navy","olive","teal","pink","magenta","maroon",
        "sienna","gold","golden" 
    ]

    # appropriate adjectives
    ADJECTIVE = [
        "abandoned","aberrant","accidentally","aggressive","aimless",
        "alien","angry","appropriate","barbaric","beacon","big","bitter",
        "bleeding","brave","brutal","cheerful","dancing","dangerous",
        "dead","deserted","digital","dirty","disappointed","discarded",
        "dreaded","eastern","eastern","elastic","empty","endless",
        "essential","eternal","everyday","fierce","flaming","flying",
        "forgotten","forsaken","freaky","frozen","full","furious","ghastly",
        "global","gloomy","grim","gruesome","gutsy","helpless","hidden",
        "hideous","homeless","hungry","insane","intense","intensive",
        "itchy","liquid","lone","lost","meaningful","modern",
        "monday's","morbid","moving","needless","nervous","new","next",
        "ninth","nocturnal","northernmost","official","old","permanent",
        "persistent","pointless","pure","quality","random","rare","raw",
        "reborn","remote","restless","rich","risky","rocky","rough",
        "running","rusty","sad","saturday's","screaming","serious",
        "severe","silly","skilled","sleepy","sliding","small","solid",
        "steamy", "stony","stormy","straw","strawberry","streaming",
        "strong","subtle",
        "supersonic","surreal","tainted","temporary","third","tidy",
        "timely",
        "unique","vital","western","wild","wooden","worthy","bitter",
        "boiling",
        "brave","cloudy","cold","confidential","dreadful","dusty","eager",
        "early","grotesque ","harsh","heavy","hollow","hot","husky","icy",
        "late","lonesome","long","lucky","massive","maximum","minimum",
        "mysterious","outstanding","rapid","rebel","scattered","shiny",
        "solid","square","steady","steep","sticky","stormy","strong",
        "sunday's","swift","tasty"
    ]

    SCIENCE = [
        "alarm","albatross","anaconda","antique","artificial","autopsy",
        "autumn","avenue","backpack","balcony","barbershop","boomerang",
        "bulldozer","butter","canal","cloud","clown","coffin","comic",
        "compass","cosmic","crayon","creek","crossbow","dagger","dinosaur",
        "dog","donut","door","doorstop","electrical","electron","eyelid",
        "firecracker","fish","flag","flannel","flea","frostbite","gravel",
        "haystack","helium","kangaroo","lantern","leather","limousine",
        "lobster","locomotive","logbook","longitude","metaphor",
        "microphone",
        "monkey","moose","morning","mountain","mustard","neutron",
        "nitrogen",
        "notorious","obscure","ostrich","oyster","parachute","peasant",
        "pineapple","plastic","postal","pottery","proton","puppet",
        "railroad",
        "rhinestone","roadrunner","rubber","scarecrow","scoreboard",
        "scorpion",
        "shower","skunk","sound","street","subdivision","summer","sunshine",
        "tea","temple","test","tire","tombstone","toothbrush","torpedo",
        "toupee",
        "trendy","trombone","tuba","tuna","tungsten","vegetable","venom",
        "vulture","waffle","warehouse","waterbird","weather","weeknight",
        "windshield","winter","wrench","xylophone","alpha","arm","beam",
        "beta",
        "bird","breeze","burst","cat","cobra","crystal","drill","eagle",
        "emerald","epsilon","finger","fist","foot","fox","galaxy","gamma",
        "hammer","heart","hook","hurricane","iron","jazz","jupiter","knife",
        "lama","laser","lion","mars","mercury","moon","moose","neptune",
        "omega","panther","planet","pluto","plutonium","poseidon","python",
        "ray","sapphire","scissors","screwdriver","serpent","sledgehammer",
        "smoke","snake","space","spider","star","steel","storm","sun",
        "swallow",
        "tiger","uranium","venus","viper","wrench","yard","zeus"
    ]

    # generate an operation codename
    def self.codename
        all_names = COLOR + ADJECTIVE
        names = 2.times.map{|i| all_names.shuffle!.first }
        suffix = SCIENCE.shuffle.first

        i = rand 100

        if i <= 15
            name = (names.reverse <<  suffix)
        elsif i > 15 && i <= 30
            name = [suffix, names[0]]
        else
            name = [names[0], suffix]
        end
        name.map{|x| x.capitalize}.join " "
    end
end
