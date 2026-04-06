local player = game.Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "SpiderNotifGui"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

local container = Instance.new("Frame")
container.Size = UDim2.new(0, 300, 1, -20)
container.Position = UDim2.new(1, -310, 0, 10)
container.BackgroundTransparency = 1
container.Parent = gui

local spiderFacts = {
    "Spiders are arachnids, not insects.",
    "Spiders have 8 legs.",
    "Most spiders have 8 eyes, but some have fewer.",
    "Some spiders have no eyes at all.",
    "Spiders do not have bones.",
    "They use hydraulic pressure to move their legs.",
    "There are over 45,000 known spider species.",
    "New spider species are discovered every year.",
    "Spider silk is stronger than steel of the same thickness.",
    "Spider silk is also very flexible.",
    "Some spiders can produce multiple types of silk.",
    "Spiders use silk for webs, egg sacs, and movement.",
    "Not all spiders spin webs.",
    "Some spiders hunt by chasing their prey.",
    "Jumping spiders have excellent vision.",
    "Jumping spiders can leap many times their body length.",
    "Wolf spiders carry their babies on their backs.",
    "Some spiders mimic ants to avoid predators.",
    "Trapdoor spiders hide in burrows with camouflaged lids.",
    "Some spiders live underwater using air bubbles.",
    "Spiders breathe through book lungs or tracheae.",
    "Most spiders are harmless to humans.",
    "Only a small number of spiders are dangerous.",
    "Spiders help control insect populations.",
    "A spider can eat hundreds of insects in a year.",
    "Some spiders can regenerate lost legs.",
    "Spiders molt (shed their exoskeleton) to grow.",
    "After molting, spiders are soft and vulnerable.",
    "Some female spiders eat males after mating.",
    "Male spiders often perform dances to attract females.",
    "Peacock spiders perform colorful mating dances.",
    "Some spiders use vibrations to communicate.",
    "Spiders detect movement through vibrations.",
    "Spiders do not have ears.",
    "They sense sound through their legs.",
    "Some spiders glow under ultraviolet light.",
    "Spiders can survive weeks without food.",
    "Some spiders can survive without water for long periods.",
    "The largest spider is the Goliath birdeater.",
    "The smallest spider is about the size of a pinhead.",
    "Some spiders can run very fast.",
    "The giant house spider is one of the fastest.",
    "Spiders inject venom to subdue prey.",
    "Venom also helps digest food.",
    "Spiders cannot chew solid food.",
    "They liquefy their prey before eating.",
    "Some spiders wrap prey in silk before eating it.",
    "Orb-weaver spiders build spiral-shaped webs.",
    "Webs can be rebuilt daily.",
    "Some spiders recycle their webs by eating them.",
    "Spider silk has been studied for medical uses.",
    "Some spiders glide through the air using silk.",
    "This is called ballooning.",
    "Spiderlings use ballooning to travel long distances.",
    "Spiders have two main body parts.",
    "These are the cephalothorax and abdomen.",
    "Spiders have fangs called chelicerae.",
    "Spiders have small appendages called pedipalps.",
    "Male spiders use pedipalps to transfer sperm.",
    "Some spiders live in colonies.",
    "Most spiders are solitary.",
    "Social spiders share webs and food.",
    "Spiders can live almost anywhere on Earth.",
    "They are found on every continent except Antarctica.",
    "Some spiders live in deserts.",
    "Some live in rainforests.",
    "Some live in caves.",
    "Cave spiders may have reduced eyesight.",
    "Spiders can climb smooth surfaces.",
    "They use tiny hairs on their feet.",
    "Some spiders can walk on water.",
    "Fishing spiders catch small fish.",
    "Some spiders eat plants or nectar occasionally.",
    "Most spiders are carnivores.",
    "Spiders have a short lifespan.",
    "Some live only a few months.",
    "Tarantulas can live over 20 years.",
    "Spiders lay eggs in silk sacs.",
    "Egg sacs can contain hundreds of eggs.",
    "Baby spiders are called spiderlings.",
    "Spiderlings often disperse quickly after hatching.",
    "Some spiders guard their eggs.",
    "Some carry egg sacs with them.",
    "Spiders can sense chemicals in the air.",
    "Some spiders use camouflage to hide.",
    "Crab spiders can change color.",
    "Some spiders look like bird droppings.",
    "Spiders have existed for over 300 million years.",
    "They existed before dinosaurs.",
    "Fossil spiders have been found in amber.",
    "Some spiders can fake death.",
    "This is called thanatosis.",
    "Spiders can be beneficial in agriculture.",
    "They reduce crop pests naturally.",
    "Some spiders are kept as pets.",
    "Tarantulas are popular pet spiders.",
    "Spiders rarely bite humans.",
    "Most bites happen in self-defense.",
    "Spider venom varies by species.",
    "Some spiders build funnel-shaped webs.",
    "Funnel-web spiders wait inside for prey.",
    "Some spiders use sticky silk.",
    "Others use non-sticky capture techniques.",
    "Spiders can detect Earth’s vibrations.",
    "Some spiders hunt at night.",
    "Others hunt during the day.",
    "Spiders play an important role in ecosystems."
}

local function notify(text)
    local notif = Instance.new("TextLabel")
    notif.Size = UDim2.new(1, 0, 0, 40)
    notif.BackgroundColor3 = Color3.fromRGB(25,25,25)
    notif.TextColor3 = Color3.new(1,1,1)
    notif.Font = Enum.Font.SourceSansBold
    notif.TextSize = 18
    notif.Text = text
    notif.BorderSizePixel = 0
    notif.Parent = container

    Instance.new("UICorner", notif)

    local y = 0
    for _, v in ipairs(container:GetChildren()) do
        if v:IsA("TextLabel") then
            v.Position = UDim2.new(0, 0, 0, y)
            y += 45
        end
    end

    task.delay(4, function()
        notif:Destroy()
    end)
end
