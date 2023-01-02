# RB101-RB109 - Small Problems - Medium 1

require 'pry'

=begin

1) Longest Sentence

text1 = 'Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.'

def longest_sentence(text)
  sentences = text.split('.'||'!'||'?') # could be changed to regex "/\.|\?|\!/"
  sentences.map do |x|
    x.split.size
  end.sort[-1]
end

# Or

def longest_sentence1(text)
  sentences = text.split(/\.|\!|\?/)
  longest_sentence = sentences.max_by {|sentence| sentence.split.size}
  longest_sentence_size = longest_sentence.split.size
  longest_sentence = longest_sentence.strip # #strip removes leading and trailing whitespace
  p "#{longest_sentence}"
  p "Containing #{longest_sentence_size} words"
end

#longest_sentence1(text1)

# Further exploration, keep end of sentence punctuation in result string.

def longest_sentence_with_punc(text)
  sentences = text.split(/(?<=[.!?])/)
  longest_sentence = sentences.max_by {|sentence| sentence.split.size}
  longest_sentence_size = longest_sentence.split.size
  longest_sentence = longest_sentence.strip # #strip removes leading and trailing whitespace
  p "#{longest_sentence}"
  p "Containing #{longest_sentence_size} words"
end

#longest_sentence_with_punc(text1)

# Further exploration, longest word or longest paragraph?

def longest_word(text)
  words = text.split()
  longest_word = words.max_by {|word| word.size}
  longest_word_size = longest_word.size
  p "#{longest_word}"
  p "Containing #{longest_word_size} characters"
end

longest_word(text1)

# By largest paragraph

def longest_paragraph(text)
  paragraph = text.split(/\n\n/) # split on 2 new lines characters for paragraph.
  longest_paragraph = paragraph.max_by { |paragraph| paragraph.split().size }
  longest_paragraph_size = longest_paragraph.split.size
  p "#{longest_paragraph}"
  p "Contain #{longest_paragraph_size} words."
end

longest_paragraph(text1)

2) Now I Know My ABCs



=end

# Letter blocks:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

def block_word?(word)

end

