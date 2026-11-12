shopping :-
    menu([milk, bread, eggs, rice, apples]).

menu(List) :-
    nl,
    write('d - Display all items'), nl,
    write('a - Add an item'), nl,
    write('e - Exit'), nl,
    write('Enter your choice: '),
    read(Choice),
    handle_choice(Choice, List).

handle_choice(d, List) :-
    write('Shopping items:'), nl,
    display_items(List),
    menu(List).

handle_choice(a, List) :-
    write('Enter the item: '),
    read(Item),
    NewList = [Item|List],
    write('Item added.'), nl,
    menu(NewList).

handle_choice(e, _) :-
    write('Goodbye!'), nl.

handle_choice(Choice, List) :-
    Choice \= d,
    Choice \= a,
    Choice \= e,
    write('Invalid choice.'), nl,
    menu(List).

display_items([]).
display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
