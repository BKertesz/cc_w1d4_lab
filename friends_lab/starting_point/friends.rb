def get_name(person)
  return person[:name]
end

def get_favorite_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person,food)
  likes = false
  for item in person[:favourites][:things_to_eat]
    likes = true if item == food
  end
  return likes
end

def add_friend(person,friend)
   return person[:friends].push(friend)
end

def remove_friend(person,friend)
  person[:friends].delete(friend)
  return person[:friends]
end

def total_money(persons)
  total = 0
  for money in persons
    total += money[:monies]
  end
  return total
end

def loan_to_friend(lender,lendee,value)
  lender[:monies] -= value
  lendee[:monies] += value
end

  def everyones_favourite_food(people)
    foods = []

    for person in people
         foods.concat(person[:favourites][:things_to_eat])
    end
    return foods
  end

  def losers_with_no_friends(people)
    no_friends = []
    for person in people
      if person[:friends].length == 0
        no_friends.push(person)
      end
    end
    return no_friends
  end
# End of file
