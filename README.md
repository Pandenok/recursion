### Warmup: Fibonacci

> Write a method `#fibs` which takes a number and returns that many members of the fibonacci sequence. Use iteration for this solution.
> Now write another method `#fibs_rec` which solves the same problem recursively.

### Merge Sort algorithm

After watching all background videos provided, it was not very challenging to write a Merge Sort algorithm. Could it be that the original idea behind the assignment was NOT to watch the background videos before writing the code? well... if it's so... I've cheated.

As far as a lot of experienced peers from ODIN community have suggested to get more familiar with debuggers to understand how a program will behave given certain inputs and as far as the best way to understand recursion is to trace the execution flow with pen and paper, it was a perfect assignment to start going dipper with `pry`.

There is a ton of articles, videos, guides, how-to's, tips etc on how to use `pry` on [wikipry](https://github.com/pry/pry/wiki) and on [Google](https://www.google.com/search?client=ubuntu&hs=4G4&channel=fs&ei=GRgKX56KNMy56QTmzoH4Dw&q=how+to+use+pry+with+ruby&oq=how+to+use+pry+with+ruby&gs_lcp=CgZwc3ktYWIQAzIGCAAQFhAeMgYIABAWEB4yBggAEBYQHjoHCAAQRxCwAzoFCAAQkQI6AgguOgIIADoICC4QxwEQowI6CggAEJECEEYQ-QE6BQguEJMCOggIABAWEAoQHlDGFljUNmDWOGgCcAB4AIABgwGIAaMUkgEENy4xN5gBAKABAaoBB2d3cy13aXqwAQA&sclient=psy-ab&ved=0ahUKEwje-oGy_MXqAhXMXJoKHWZnAP8Q4dUDCAs&uact=5). And it's true `pry` is an absolute beast of a tool and offers a plethora of advanced features. Nobody argues on that! The question is how to access them? Easy, they say, put a `binding.pry` in the part of the code that isn’t working as expected, cause that line of code to be executed, and then poke around in the session in your terminal... What if nothing happens??? What if you place your breakpoint, run your code, and instead of landing inside `pry` terminal, nothing happens? 

The best answer I found on the web is 
> *"While this may be frustrating, it does give a clue. It means that your code never triggered the Pry because it never got that far. So what do you do? You set a new breakpoint earlier in the code and see if that works. While this may seem tedious, it is actually giving you important information!"*
> -[Melissa Williams](https://www.honeybadger.io/blog/debugging-ruby-with-pry/) - 

So, just move the `binding.pry` one line to the top and try to run your file again. If it still doesn't catch it, move the `binding.pry` one more line to the top and keep doing this until your file catches the `binding.pry`. By doing this you will know which line of code causes the problem.

What if you place your breakpoint, run your code, land inside `pry` terminal and find yourself in infinite loop without possibily to type anything in the console if not `!!!` to get out of it???

Here are a couple of advices found on [Medium](https://medium.com/@akedalat/troubleshooting-weird-behaviours-of-pry-in-ruby-f3d2fa93b854)

> "*Don’t write `binding.pry` at the last line of your source code. If this is the case, always write a short expression after, something simple like `puts "Testing Pry"` would do fine."*

> *"If it still doesn’t catch it then your code has either Compile-time errors, (Syntax and Type errors), Link-time errors (found by the linker) or Run-time errors (when the programme runs)"*

And is here where I'm frustrated... Within your `Pry` console you have all the features of this world to inspect state or introspect your program, but you can't access them until you fix your code. How to fix your code? Use a debugger! And we're in infinite loop as a `binding.pry` in our code...

As far as I don't know and I haven't found any other solution than to use an old good `puts` to help see what's going on in the code. It's not beautiful, it's tedious, it's simple and effective... 

<img src="img/puts-debugging.png" alt="Debugging with puts" width="400" height="400">

The question remains open: is it *possibile* to follow the code like this with any debugger?

## Project Euler

[Project Euler](https://projecteuler.net/archives) problems are math problems that you then solve using code. There isn't one solution to these problems and if you google "euler ruby" you'll find dozens of responses. I went through the first 5 as a part of additional assignment to get more confident with recursion, so my solutions are all recursive/mixed.

### Project Euler #1 

<!-- **Multiples of 3 and 5** -->

> If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
> Find the sum of all the multiples of 3 or 5 below 1000.

After reading the problem, I have a basic understanding of what I need to do and I've solved it surprisingly quick using iteration. The understanding however hasn't helped me a lot when I was trying to convert the solution using recursion... Overcomplicated the thing by introducing the additional variable of `sum` and got stuck. After some research got rid of it and you can see my solution in the file.  

### Project Euler #2 

<!-- **Even Fibonacci numbers** -->

> Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be: `1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...`.
> By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

I had already a ready-to-go recursive solution for fibonacci from warmup. I knew already how to build it up to certain length, how to find a certain element, in this case you need to find out how to stop a sequence when you reach a certain value (4_000_000). Once you know it, it's easy to finish the exercise.

### Project Euler #3

<!-- **Largest prime factor** -->

> The prime factors of 13195 are 5, 7, 13 and 29.
> What is the largest prime factor of the number 600851475143 ?

Pen and pencil and 5 min after it was done! 

### Project Euler #4

<!-- **Largest palindrome product** -->

> A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
> Find the largest palindrome made from the product of two 3-digit numbers.

### Project Euler #5

<!-- **Smallest multiple** -->

> 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
> What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

<!-- 
So, there's a Ruby library called Prime which makes doing anything with prime numbers really simple. First, I required that library. The I just defined primes and used prime_division which divides the number to determine which the prime numbers are. Finally, I took the last number in the list which would be the largest number. Really simple and straight forward.  -->
