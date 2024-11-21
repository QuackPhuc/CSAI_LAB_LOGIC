% Base predicate
% parent(Parent,Child) 
% deceased(Person) 
% male(Person)
% female(Person) 
% married(Person, Person) 
% divorced(Person, Person)

% Rule
husband(Person, Wife) :- male(Person), female(Wife), married(Person, Wife).
wife(Person, Husband) :- female(Person), male(Husband), married(Person, Husband).

father(Father, Child) :- male(Father), parent(Father, Child).
mother(Mother, Child) :- female(Mother), parent(Mother, Child).

child(Child, Parent) :- parent(Parent, Child).
son(Son, Parent) :- male(Son), child(Son, Parent).
daughter(Daughter, Parent) :- female(Daughter), child(Daughter, Parent).

grandparent(GP, GC) :- parent(GP, Parent), parent(Parent, GC).
grandfather(GF, GC) :- male(GF), grandparent(GF, GC).
grandmother(GM, GC) :- female(GM), grandparent(GM, GC).

grandchild(GC, GP) :- grandparent(GP, GC).
grandson(GS, GP) :- male(GS), grandchild(GS, GP).
granddaughter(GD, GP) :- female(GD), grandchild(GD, GP).

sibling(Person1,Person2) :- father(Father, Person1), father(Father, Person2), mother(Mother, Person1), mother(Mother, Person2), Person1 \= Person2.
brother(Brother, Sibling) :- male(Brother), sibling(Brother, Sibling).
sister(Sister, Sibling) :- female(Sister), sibling(Sister, Sibling).

aunt(Aunt, NieceNephew) :- female(Aunt), sibling(Aunt, Parent), parent(Parent, NieceNephew).
uncle(Uncle, NieceNephew) :- male(Uncle), sibling(Uncle, Parent), parent(Parent, NieceNephew).

niece(Niece, AuntUncle) :- female(Niece), parent(Parent, Niece), sibling(Parent, AuntUncle).
nephew(Nephew, AuntUncle) :- male(Nephew), parent(Parent, Nephew), sibling(Parent, AuntUncle).

% Basic facts
parent(elizabeth, charles).
parent(elizabeth, anne).
parent(elizabeth, andrew).
parent(elizabeth, edward).
parent(philip, charles).
parent(philip, anne).
parent(philip, andrew).
parent(philip, edward).
parent(charles, william).
parent(charles, harry).
parent(diana, william).
parent(diana, harry).
parent(anne, peter).
parent(anne, zara).
parent(phillips, peter).
parent(phillips, zara).
parent(andrew, beatrice).
parent(andrew, eugenie).
parent(sarah, beatrice).
parent(sarah, eugenie).
parent(edward, james).
parent(edward, lady).
parent(sophie, james).
parent(sophie, lady).
parent(william, george).
parent(william, charlotte).
parent(william, louis).
parent(catherine, george).
parent(catherine, charlotte).
parent(catherine, louis).
parent(harry, archie).
parent(harry, lilibet).
parent(meghan, archie).
parent(meghan, lilibet).
parent(peter, savannah).
parent(peter, isla).
parent(autumn, savannah).
parent(autumn, isla).
parent(zara, mia).
parent(zara, lena).
parent(zara, lucas).
parent(mike, mia).
parent(mike, lena).
parent(mike, lucas).
parent(beatrice, sienna).
parent(edoardo, sienna).
parent(eugenie, august).
parent(jack, august).

male(philip).
male(charles).
male(phillips).
male(andrew).
male(edward).
male(timothy).
male(edoardo).
male(jack).
male(august).
male(james).
male(william).
male(harry).
male(peter).
male(mike).
male(george).
male(louis).
male(archie).
male(lucas).

female(elizabeth).
female(anne).
female(diana).
female(sarah).
female(sophie).
female(camilla).
female(lady).
female(zara).
female(beatrice).
female(eugenie).
female(catherine).
female(meghan).
female(autumn).
female(charlotte).
female(lilibet).
female(savannah).
female(isla).
female(mia).
female(lena).

married(elizabeth, philip).
married(philip, elizabeth).
married(charles, diana).
married(diana, charles).
married(anne, phillips).
married(phillips, anne).
married(andrew, sarah).
married(sarah, andrew).
married(edward, sophie).
married(sophie, edward).
married(charles, camilla).
married(camilla, charles).
married(anne, timothy).
married(timothy, anne).
married(william, catherine).
married(catherine, william).
married(harry, meghan).
married(meghan, harry).
married(peter, autumn).
married(autumn, peter).
married(zara, mike).
married(mike, zara).
married(beatrice, edoardo).
married(edoardo, beatrice).
married(eugenie, jack).
married(jack, eugenie).

divorced(charles, diana).
divorced(diana, charles).
divorced(anne, phillips).
divorced(phillips, anne).
divorced(andrew, sarah).
divorced(sarah, andrew).
divorced(peter, autumn).
divorced(autumn, peter).

deceased(philip).
deceased(diana).
deceased(elizabeth).

/** <examples>

% Basic Predicates
?- parent(Parent, william).      % Who is William's parent?
?- parent(elizabeth, Child).     % Who are the children of Queen Elizabeth?
?- parent(charles, harry).       % Is Charles the parent of Harry?

?- deceased(elizabeth).          % Is Queen Elizabeth deceased?
?- deceased(Person).             % Who are the deceased family members?
?- deceased(diana).              % Is Diana alive?

?- male(Person).                 % Who are the male members of the royal family?
?- male(harry).                  % Is Harry male?
?- male(zara).                   % Is Zara a male?

?- female(Person).               % Who are the female members of the royal family?
?- female(anne).                 % Is ss Anne female?
?- female(george).               % Is George a female?

?- married(william, Person2).    % Who is married to William?
?- married(andrew, sarah).       % Is Andrew married to Sarah?
?- married(Person1, Person2).    % Which couples are married?

?- divorced(andrew, Person2).    % Is Andrew divorced?
?- divorced(charles, Person2).   % Who is divorced from Charles?
?- divorced(Person1, Person2).   % Which couples are divorced?

% Derived Predicates
?- husband(Person, elizabeth).   % Who is the husband of Queen Elizabeth?
?- husband(philip, diana).       % Is Philip the husband of Diana?
?- husband(Person, Wife).        % Who are all the husbands in the family?

?- wife(Person, william).        % Who is the wife of William?
?- wife(meghan, harry).          % Is Meghan the wife of Harry?
?- wife(Person, Husband).        % Who are all the wives in the family?

?- father(Father, george).       % Who is the father of George?
?- father(charles, harry).       % Is Charles the father of Harry?
?- father(Father, Child).        % Who are the fathers in the family?

?- mother(Mother, charlotte).    % Who is the mother of Charlotte?
?- mother(catherine, louis).     % Is Catherine the mother of Louis?
?- mother(Mother, Child).        % Who are the mothers in the family?

?- child(Child, charles).        % Who are the children of Charles?
?- child(george, william).       % Is George the child of William?
?- child(Child, Parent).         % Who are the children in the family?

?- son(Son, catherine).          % Who is the son of Catherine?
?- son(louis, william).          % Is Louis the son of William?
?- son(Son, Parent).             % Who are the sons in the family?

?- daughter(Daughter, charles).   % Who is the daughter of Charles?
?- daughter(charlotte, catherine). % Is Charlotte the daughter of Catherine?
?- daughter(Daughter, Parent).    % Who are the daughters in the family?

?- grandparent(GP, archie).      % Who are the grandparents of Archie?
?- grandparent(elizabeth, charlotte). % Is Elizabeth a grandparent of Charlotte?
?- grandparent(GP, GC).          % Who are the grandparents in the family?

?- grandfather(GF, george).      % Who are the grandfathers of George?
?- grandfather(philip, charlotte).   % Is Philip a grandfather of Charlotte?
?- grandfather(GF, GC).          % List all grandfathers.

?- grandmother(GM, george).      % Who are the grandmothers of George?
?- grandmother(elizabeth, charlotte). % Is Elizabeth a grandmother of Charlotte?
?- grandmother(GM, GC).          % List all grandmothers.

?- grandchild(GC, elizabeth).    % Who are the grandchildren of Elizabeth?
?- grandchild(archie, philip).   % Is Archie a grandchild of Philip?
?- grandchild(GC, GP).           % List all grandchildren.

?- grandson(GS, elizabeth).      % Who are the grandsons of Elizabeth?
?- grandson(george, philip).     % Is George a grandson of Philip?
?- grandson(GS, GP).             % List all grandsons.

?- granddaughter(GD, elizabeth). % Who are the granddaughters of Elizabeth?
?- granddaughter(charlotte, philip). % Is Charlotte a granddaughter of Philip?
?- granddaughter(GD, GP).        % List all granddaughters.

?- sibling(anne, Person2).       % Who are the siblings of ss Anne?
?- sibling(edward, andrew).      % Is Edward a sibling of Andrew?
?- sibling(Person1, Person2).    % Who are the siblings in the family?

?- brother(Brother, anne).       % Who is the brother of ss Anne?
?- brother(harry, william).      % Is Harry a brother of William?
?- brother(Brother, Sibling).    % List all brothers.

?- sister(Sister, william).      % Who is the sister of  William?
?- sister(eugenie, beatrice).    % Is Eugenie the sister of Beatrice?
?- sister(Sister, Sibling).      % List all sisters.

?- aunt(Aunt, george).           % Who is the aunt of George?
?- aunt(zara, archie).           % Is Zara an aunt of Archie?
?- aunt(Aunt, NieceNephew).      % List all aunts.

?- uncle(Uncle, charlotte).      % Who is the uncle of Charlotte?
?- uncle(andrew, george).        % Is Andrew an uncle of George?
?- uncle(Uncle, NieceNephew).    % List all uncles.

?- niece(Niece, anne).           % Who is the niece of Anne?
?- niece(charlotte, harry).      % Is Charlotte the niece of Harry?
?- niece(Niece, AuntUncle).      % List all nieces.

?- nephew(Nephew, charles).      % Who is the nephew of Charles?
?- nephew(george, andrew).       % Is George a nephew of Andrew?
?- nephew(Nephew, AuntUncle).    % List all nephews.

*/