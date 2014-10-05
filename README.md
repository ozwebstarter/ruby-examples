ruby-examples
=============

Here is some small ruby examples I have developed from the problems outlined in the README to demonstrate my knowledge and skill set in Ruby 2.x and RSpec 3.x (BDD/TDD). 

> Each ruby example has been bundled and labelled within the ruby-examples root.

### Resources

- http://www.ruby-lang.org
- https://www.relishapp.com/rspec/

### Coding Style

- Ruby: https://github.com/styleguide/ruby
- RSpec: http://code.tutsplus.com/tutorials/ruby-for-newbies-testing-with-rspec--net-21297

### Examples List

1. ATM Withdraw
2. Replace Characters in a given String

### Problem 1 - ATM Withdraw

Write function to handle withdrawing money from an ATM. It will accept an amount and an array (denom) specifying the denominations of (Australian) note available for that withdrawal, and return an array representing the notes to return. If withdraw cannot be completed for the given amount with the specified denomination of notes, return false. 

E.g. withdraw(220, [50, 20, 5]) says to withdraw $220, with only $50, $20 and $5 notes available.

* Assume people prefer to get the highest possible denomination of note - eg, withdraw(65, [50, 20, 5]) should return [50, 5, 5, 5] rather than [20, 20, 20, 5], because $50 is highest.  

Example function signature in Ruby

def withdraw(amount, denoms) 
end

### Problem 2 - Replace characters in a given String

Given a String, and one or more pairs of characters, separated by a comma, which are a target character and a replacement character. Replace all instances of the target character in the String with the replacement character.  Do not replace any character more than once.

Solution should be case sensitive. Solution should not have any quotes around output.  

E.g. 

Input -  'The quick brown fox', 'o,$'    Output - The quick br$wn f$x 
Input -  'quick', 'q,k' 'k,4'    Output - kuic4  

* Note that is not 4uic4
