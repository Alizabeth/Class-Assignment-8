#Create a program to analyze a large block of text and report back on the frequency ofeach word in the text. 


#(a.) Start by sorting the text into a hash where each word  is a key with the word’s 
#value being the amount of times it has been used in the 
#block: {the: 10, john: 1, of: 15}

#First use a "here" doc to add a large block of text

block_of_text = <<DOC
Coming now to the other qualities mentioned above, I say that every 
prince ought to desire to be considered clement and not cruel. 
Nevertheless he ought to take care not to misuse this clemency. Cesare 
Borgia was considered cruel; notwithstanding, his cruelty reconciled the 
Romagna, unified it, and restored it to peace and loyalty. And if this 
be rightly considered, he will be seen to have been much more merciful 
than the Florentine people, who, to avoid a reputation for cruelty, 
permitted Pistoia to be destroyed.(*) Therefore a prince, so long as he 
keeps his subjects united and loyal, ought not to mind the reproach of 
cruelty; because with a few examples he will be more merciful than those 
who, through too much mercy, allow disorders to arise, from which follow 
murders or robberies; for these are wont to injure the whole people, 
whilst those executions which originate with a prince offend the 
individual only. Upon this a question arises: whether it be better to be loved than 
feared or feared than loved? It may be answered that one should wish to 
be both, but, because it is difficult to unite them in one person, it 
is much safer to be feared than loved, when, of the two, either must be 
dispensed with. Because this is to be asserted in general of men, that 
they are ungrateful, fickle, false, cowardly, covetous, and as long as 
you succeed they are yours entirely; they will offer you their blood, 
property, life, and children, as is said above, when the need is far 
distant; but when it approaches they turn against you. And that 
prince who, relying entirely on their promises, has neglected other 
precautions, is ruined; because friendships that are obtained by 96 
payments, and not by greatness or nobility of mind, may indeed be 
earned, but they are not secured, and in time of need cannot be relied 
upon; and men have less scruple in offending one who is beloved than one 
who is feared, for love is preserved by the link of obligation which, 
owing to the baseness of men, is broken at every opportunity for their 
advantage; but fear preserves you by a dread of punishment which never 
fails. Nevertheless a prince ought to inspire fear in such a way that, if he 
does not win love, he avoids hatred; because he can endure very well 
being feared whilst he is not hated, which will always be as long as he 
abstains from the property of his citizens and subjects and from their 
women. But when it is necessary for him to proceed against the life of 
someone, he must do it on proper justification and for manifest cause, 
but above all things he must keep his hands off the property of others, 
because men more quickly forget the death of their father than the loss 
of their patrimony. Besides, pretexts for taking away the property are 
never wanting; for he who has once begun to live by robbery will always 
find pretexts for seizing what belongs to others; but reasons for taking 
life, on the contrary, are more difficult to find and sooner lapse. But 
when a prince is with his army, and has under control a multitude of 
soldiers, then it is quite necessary for him to disregard the reputation 
of cruelty, for without it he would never hold his army united or 
disposed to its duties. 
DOC

my_block = <<DOC
code stuff we is the how we can code stuff we is the how we can code stuff we is the how we can code stuff 
we is the how we can code stuff we is the how we can code stuff we is the how we can code stuff we is the how 
we can code stuff we is the how we can code stuff we is the how we can code stuff we is the how we can 
DOC

#Next create an array out of the block of text so that it can be sortable or have the data manipulated 


 def word_count(text)
	new_text = text.split(" ") #-->Use text.split to turn text into an array that breaks(splits) at each space.
	
 	counter = Hash.new(0) #-->Next create an empty hash for your results with count = Hash.new (0)

 	new_text.each {|word| counter[word] += 1} #-->Use a method that will take each word in the array

 	puts counter #-->This will give us our results printed on the screen
end

# (b.) Once you’ve created this hash, #return the word that has been used the most

def word_max(texta)	
	new_text = texta.split(" ")

	counter = Hash.new(0)

	new_text.each {|word| counter[word] += 1}

	# puts counter

	puts counter.max #--> This will give us the word that has been used the most

end

puts word_count(block_of_text)
puts word_max(block_of_text)

# (c.) When you’re done, en capsulate 
#your script inside of a method that can analyze any block of text fed to it
#block_of_text can now be replaced with any block of text fed to it via a variable but it has to be identified above the function/method created. 
#You can see an example of this with my_block being fed to it.
puts word_count(my_block)
puts word_max(my_block)


