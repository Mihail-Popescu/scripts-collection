Loop 10 {
    ; List of words
    WordList := ["What are the health benefits of eating apples?","How to grow bananas at home?","What are the different varieties of oranges?","Why are grapes good for you?","How to tell if a pineapple is ripe?","Why are strawberries called berries?","What are the nutritional benefits of blueberries?","How to pick a ripe watermelon?","Why is kiwi considered a superfood?","What are the health benefits of pears?","How to cook carrots in different ways?","What are the advantages of eating broccoli?","How to prepare spinach for cooking?","What are some popular potato recipes?","How to grow tomatoes in containers?","Why do onions make you cry?","What are the benefits of eating cucumbers?","How to store lettuce to keep it fresh?","What are the different colors of bell peppers?","How to identify edible mushrooms?","What are the best ways to train a dog?","How to keep cats entertained indoors?","What are the characteristics of a healthy rabbit?","How to set up a hamster cage?","What do guinea pigs eat?","How to attract birds to your garden?","What are the most colorful freshwater fish?","How to set up a turtle tank?","What are the most common snake species?","How to care for a pet frog?","What are the benefits of planting trees?","How to grow flowers from seeds?","What types of grass are best for lawns?","How to prune bushes and shrubs?","How to care for a cactus indoors?","What are the different colors of roses and their meanings?","How to grow daisies in pots?","What are the different varieties of tulips?","How to plant sunflowers in your garden?","What are the characteristics of lilies?","How do cars work?","What are the safety features of buses?","How to maintain a truck for longevity?","How to ride a motorcycle safely?","What are the benefits of riding a bicycle?","How to travel by train efficiently?","What are the safety precautions for boating?","How do airplanes fly?","What are the different types of helicopters?","How are rockets launched into space?","What are the main parts of a house structure?","How to decorate an apartment on a budget?","What are the features of a medieval castle?","How to build a cabin in the woods?","What are the different types of tents for camping?","How are igloos constructed?","What is the purpose of a lighthouse?","How to build a treehouse for kids?","What are the characteristics of a mansion?","What are the different rooms in a palace?","How to write a book synopsis?","What are the top newspapers in the world?","How to publish a magazine?","What are the benefits of keeping a journal?","How to organize a notebook effectively?","What are the elements of a good diary entry?","How to write a novel outline?","What are the best online dictionaries?","How to use an encyclopedia for research?","What are the most popular comic book characters?","How to troubleshoot computer problems?","What are the latest smartphone trends?","How to choose the right tablet for your needs?","What are the top television shows of all time?","How to take professional-quality photos with a camera?","What are the best headphones for music production?","How to set up a home theater speaker system?","How to cook using a microwave oven?","What are some easy recipes for a refrigerator?","How to troubleshoot a dishwasher that won't drain?","What are the benefits of going to school?","How to choose the right university?","What are the advantages of visiting a library?","How to set up a classroom for optimal learning?","What are the essential equipment for a science laboratory?","How to stay fit in the gymnasium?","What are the benefits of attending an auditorium event?","How to organize a school cafeteria efficiently?","What are the safety rules for using a playground?","How to decorate a dormitory room?","What are the dangers of glacier trekking?","How to survive an iceberg encounter?","What are the effects of climate change on ice sheets?","How to prevent icebergs from melting?","What are the characteristics of an ice cap?","How to explore an ice cave safely?","What are the precautions for crossing an ice bridge?","What are the dangers of seracs?","What are the different types of clouds?","How do cirrus clouds form?","What are the characteristics of cumulus clouds?","How to identify stratus clouds?","What are alto clouds associated with?","How do nimbus clouds differ from other cloud types?","What causes fog to form?","How does mist differ from fog?","What are the health risks associated with haze?","How to reduce smog pollution?","What are the benefits of rainwater harvesting?","How to drive safely in heavy rain?","What to do during a thunderstorm?","How to stay safe during a lightning storm?","What precautions to take during a hailstorm?","How to drive in snow and icy conditions?","What to do if caught in a blizzard while traveling?","How to survive an avalanche?","What are the dangers of icicles?","How do snowflakes form?","What are the steps for making a perfect snowball?","How to build a snow fort?","What are the dangers of snowdrifts?","How to prevent snowbanks from forming?","What are the characteristics of a snowcap?","How to measure wind speed?","What are the effects of a gentle breeze?","How to protect your home from a gale?","What to do during a gusty wind?","How to prepare for a hurricane?","What are the steps for typhoon preparedness?","How to evacuate during a cyclone?","What to do if caught in a tornado?","How to seek shelter during a whirlwind?","What are the safety precautions for waterspouts?","How to enjoy outdoor activities safely?"]


    ; Pick a random word from the list
    Random, Index, 1, % WordList.MaxIndex()
    RandomWord := WordList[Index]

    ; Open Bing in a web browser and make sure it's active and visible
    ; Wait for the browser window to be active
    WinWaitActive, ahk_class Chrome_WidgetWin_1, , 5
    
    Random, Delay10, 1000, 3000
    Sleep, Delay10

    ; Move the mouse to the search bar
    CoordMode, Mouse, Screen
    WinGetPos, , , BrowserWidth, BrowserHeight, ahk_class Chrome_WidgetWin_1
    MouseClick, left, BrowserWidth * 0.5, BrowserHeight * 0.2, 1

    Random, Delay11, 1000, 3000
    Sleep, Delay11

    ; Type a random word into the search bar and press Enter
    SendInput, %RandomWord%{Enter}

    ; Wait for a random delay before continuing
    Random, Delay1, 1000, 3000
    Sleep, Delay1

    ; Wait for the search results to load (adjust delay as needed)
    Random, Delay2, 2000, 4000
    Sleep, Delay2

    ; Scroll to the bottom of the page using the scroll wheel
    Loop 5  ; Scroll 5 times
    {
        MouseClick, WheelDown, , , 7
        Random, Delay3, 50, 200
        Sleep, Delay3  ; Small random delay between scrolls
    }

    ; Wait for a random delay before continuing
    Random, Delay4, 1000, 3000
    Sleep, Delay4

    ; Move the mouse to the specified position
    MouseClick, left, 529, 195, 1

    ; Click on the last link (assuming it's the last search result)
    MouseClick, left

    ; Wait for a random delay before continuing
    Random, Delay5, 4000, 6000
    Sleep, Delay5

    ; Simulate going back in the browser history
    SendInput, {XButton1}

    ; Wait for a random delay before continuing
    Random, Delay6, 1000, 3000
    Sleep, Delay6

    ; Wait for the page to load (adjust delay as needed)
    Random, Delay7, 2000, 4000
    Sleep, Delay7


    Loop 5  ; Scroll 5 times
    {
	SendInput, +{Space down}  ; Press Shift + Space
        Random, Delay8, 50, 200
        Sleep, Delay8  ; Small random delay between scrolls
    }

    ; Wait for a random delay before continuing to the next iteration
    Random, Delay9, 2000, 5000
    Sleep, Delay9
}
