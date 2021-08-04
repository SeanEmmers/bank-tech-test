# Bank Interface

## Approach

I spent an hour or so planning how I wanted to build my bank interface. I decided on the methods and what roles they would have. I followed TDD and created a basic bank class. I then split the class up into 5 seperate classes to adhere to SRP.

## Next Step

My tests are not great, I ran out of time while trying to refactor my tests to include doubles, especially for the ATM spec as the class is rather complex and has alot of dependencies.

I would also like to write a feature test using Capybara

## How To Run

Clone the repo <br />
Run bundle Install <br />
Run irb <br />

```
require './lib/ATM'
atm = ATM.new
atm.deposit()
atm.withdraw()
atm.print_statement

```

Here is how the output looks in the console

```
    date    || credit || debit || balance
 04/08/2021 ||   200  ||       ||   1400 
 04/08/2021 ||        ||  500  ||   1600 
 04/08/2021 ||   200  ||       ||   1100 
 04/08/2021 ||   200  ||       ||   1300 
 04/08/2021 ||        ||  500  ||   1500 
 04/08/2021 ||        ||  500  ||   1000 
 04/08/2021 ||        ||  500  ||   500 
 
 ```
## Edge Cases

withdraw more than the balance? - This has been acounted for with a raise statement.

deposit or withdaw zero? - Have not gotten around to fixing this yet, would look into adding another method inside the ATM class that would check if the input is zero.