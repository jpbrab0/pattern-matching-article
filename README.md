<p align="center">
    <img src="./.github/banner-article.png">
</p>

# Pattern Matching In Elixir

Hey people! In this article I will explain a little about pattern matching In Elixir!

## What is pattern matching after all?

Pattern matching is a way to easily break down data types, tuples and lists. Also, it is one of the fundamentals of recursion in Elixir.

## Variables in the Elixir

> Throughout the article we will see about the corresponding pattern and to make sense of the writings understand a little about how to vary the Elixir.

In Elixir the variables are not assigned a value

To explain it better here is an example:

`` variable = 1``

For the variable to be equal to 1, in mathematics if, for example `` x = 1`` what does x have to be worth to be equivalent to 1? It has to be 1

And the same thing happens in the Elixir, so the variables are immutable.

And we just saw a pattern matching the Elixir variables.

---

## Running Elixir projects

To run our project we will enter the interactive mode of the Elixir (even though it is a compiled language, it has an interactive mode).

```bash
iex mix -S
```

And then

You will type the name of the module (in our case `` PatternMatchingArticle``) and also the name of the function you want to execute.

```bash
iex> PatternMatchingArticle. <function name> (<parameters>)
```

And just change these <> for the function name and the parameters.

---

## Using pattern matching in practice!

Requisites:
    
* [Elixir](https://Elixir-lang.org/install.html)



First we will create the project in Elixir with the mix:
```bash
mix new pattern_matching_artigo
```



In `lib / pattern_matching_artigo.ex`,
we will delete all functions leaving only the defmodule
```Elixir
defmodule PatternMatchingArticle

end
```

After deleting all the functions, let's create a function called `call ()` that will have a parameter that will be a list:

```Elixir
defmodule PatternMatchingArticle
    def call (list) do
    
    end
end
```

In the Elixir it is not possible to get the value of a list with `` list [1] `` ', so let's see how pattern matching works with the lists.


To go through a list we will create a function called `` count_length`` with a parameter called `` [head | tail] ``:

```Elixir
    def count_length ([head | tail]) of

    end
```

> What would be this `` [head | tail] ``?

In Elixir one way to get the elements of a list is by using that form. The head is the first element of the list, and the tail is the body of the list, that is, all the other elements in the list.

For example:

```Elixir
    def count_length ([head | tail]) of
        IO.inspect (head)

        IO.inspect (tail)
    end
```

If we run this function by passing a list `` [1,2,3] ``

``` bash
iex mix -S

iex> PatternMatchingArticle.count_length ([1,2,3])
```

will return:

``` bash
1
[2.3]
```

Knowing this, we can continue our project:

To count the quantity of a list we have to have a counter, so let's pass it as a parameter:

```Elixir
def count_length ([head | tail], count) do
    IO.inspect (head)

    IO.inspect (tail)
end
```

Since we are not going to use our head to make a count, we can put a _ in front of this variable. This indicates that you will receive this variable as a parameter, but we will not use it.

And we’re also going to increase the count.

```Elixir
def count_length ([_ head | tail], count) do
    count = count + 1
end
```

But how are we assigning a value to a variable, with no Elixir as variables being immutable?

We are not actually reassigning a value to a variable, but we are creating a new variable called count.

If you execute this code with iex, passing as the parameter for the count that will be the number that will start counting the list.

```bash
iex> PatternMatchingArticle.count_length ([1,2,3], 0)
```

He will return:

```bash
1
```

Now let's apply recursion to this function:

```Elixir
def count_length ([head | tail], count) do
    count = count + 1

    # Passing tail and counting as parameter.
    count_length (tail, count)
end
```

> If we run this function again it will give an error that is passing an empty list

We can solve it by adding another function `` filter_length () ``

```Elixir
def count_length ([], count), do: count
```
And what does this function do?

This function checks whether the list is empty, and whether the total list count will return.

If it has values ​​in this list it will add 1 to the count and will execute the function until it finishes scrolling through the list.

And we also just saw Pattern Matching with functions!


And finally in the function `` call () ``, we will add a parameter called `` list`` and execute a function `` count_length``.

```Elixir
def call (list) do
    count_length (list, 0)
end
```

So, we finished our mini project of counting the size of the lists with Pattern Matching and also using recursion!

---

Pattern Matching also works with tuples

For example:

```Elixir
defp print_content_file ({: ok, content}), do: content

defp print_content_file ({: error, reason}), do: reason
```

In this private function (``private function in the Elixir is defp and a public function is def``) it will take a tuple that returns: ok, and some content and it will return that content.

If it returns an error it will return an error.

And so we use pattern matching with lists, tuples, functions and we also deal with errors.

---

If you have any questions about the code made during the article, access the [repository](https://github.com/jpbrab0/pattern-matching-article) that contains the project made during that article.

---

This article was a little long but I hope you enjoyed it!

If you liked the article leave the like, share with friends and comment what you think of the article!

To the next!