def badge_maker(name)
    badge = "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    batch_badges = []
    
    attendees.each do |attendee|
        batch_badges << badge_maker(attendee)
    end

    batch_badges
end

def assign_rooms(attendees)
    attendees_with_rooms = []

    attendees.each_with_index do |attendee, index|
        attendees_with_rooms << "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
    end

    attendees_with_rooms
end

def printer(attendees)
   batch_badges = batch_badge_creator(attendees)
   batch_badges.each do |badge|
    puts "#{badge}"
   end

   attendees_with_rooms = assign_rooms(attendees)
   attendees_with_rooms.each do |assignment|
    puts "#{assignment}"
   end
end