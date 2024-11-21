:- consult('royal_family_tree.pl').

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