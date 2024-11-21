:- consult('dmg_by_types.pl').
:- consult('pokemon.pl').

% Damage calculation for single and dual types
% Note: Active skills(Attack) only have 1 type
damage(AttackType, [DefenseType], Result) :- 
    damage_multiplier(AttackType, DefenseType, Result).

damage(AttackType, [DefenseType1, DefenseType2], Result) :-
    damage_multiplier(AttackType, DefenseType1, Mult1),
    damage_multiplier(AttackType, DefenseType2, Mult2),
    Result is Mult1 * Mult2.

% Weakness (higher damage taken)
weak(DefenseType, Attackers) :-
    findall(Attacker, 
        (damage(Attacker, DefenseType, X), X > 1), 
        AttackersUnfiltered),
    sort(AttackersUnfiltered, Attackers).

% Strength (lower damage taken)
strong(DefenseType, Attackers) :-
    findall(Attacker, 
        (damage(Attacker, DefenseType, X), X < 1), 
        AttackersUnfiltered),
    sort(AttackersUnfiltered, Attackers). 

% Normalized Pair of Types
normalize_pair([Type1, Type2], [Type1, Type2]) :- 
    Type1 @=< Type2.
normalize_pair([Type1, Type2], [Type2, Type1]) :- 
    Type1 @> Type2.

% Effective (super effective): Higher damage dealt
effective(AttackType, NormalizedDefenders) :-
    findall(DefenderPair, 
        (damage(AttackType, Defender, X), X > 1, 
         (
         	is_list(Defender) -> normalize_pair(Defender, DefenderPair); 
         	DefenderPair = Defender)
         ),
        DefendersUnfiltered),
    sort(DefendersUnfiltered, NormalizedDefenders). 

% Not effective: Lower damage dealt
noteffective(AttackType, NormalizedDefenders) :-
    findall(DefenderPair, 
        (damage(AttackType, Defender, X), X < 1, 
         (
         	is_list(Defender) -> normalize_pair(Defender, DefenderPair); 
         	DefenderPair = Defender)
         ),
        DefendersUnfiltered),
    sort(DefendersUnfiltered, NormalizedDefenders). % Loại bỏ trùng lặp

% Attacker comparision on types
attack([AtkType], DefType, Result) :-
    damage(AtkType, DefType, Dmg),
    (
        Dmg >= 4 -> Result = very_good;
        Dmg >= 2 -> Result = good;
        Dmg >= 1 -> Result = not_bad;
    	Dmg >= 0.5 -> Result = bad;
    	Result = very_bad
    ).

attack([AtkType1, AtkType2], DefType, Result) :-
    damage(AtkType1, DefType, Dmg1),
    damage(AtkType2, DefType, Dmg2),
    (   
        Dmg1 > Dmg2 -> MaximumDmg = Dmg1; MaximumDmg = Dmg2
    ),
    (
        MaximumDmg >= 4 -> Result = very_good;
        MaximumDmg >= 2 -> Result = good;
        MaximumDmg >= 1 -> Result = not_bad;
        MaximumDmg >= 0.5 -> Result = bad;
    	Result = very_bad
    ).

% Defender comparision on types
defense(DefType, [AtkType], Result) :-
    damage(AtkType, DefType, Dmg),
    (
        Dmg >= 4 -> Result = very_bad;
        Dmg >= 2 -> Result = bad;
        Dmg >= 1 -> Result = not_bad;
    	Dmg >= 0.5 -> Result = good;
        Result = very_good
    ).

defense(DefType, [AtkType1, AtkType2], Result) :-
    damage(AtkType1, DefType, Dmg1),
    damage(AtkType2, DefType, Dmg2),
    (   
        Dmg1 > Dmg2 -> MaximumDmg = Dmg1; MaximumDmg = Dmg2
    ),
    (
        MaximumDmg >= 4 -> Result = very_bad;
        MaximumDmg >= 2 -> Result = bad;
        MaximumDmg >= 1 -> Result = not_bad;
    	MaximumDmg >= 0.5 -> Result = good;
        Result = very_good
    ).

% Match-up for Pokémon based on their types
match(Pokemon1, Pokemon2, Result) :-
    pokemon(Pokemon1, AttackerTypes),
    pokemon(Pokemon2, DefenderTypes),
    attack(AttackerTypes, DefenderTypes, Res1),
    (   
    	Res1 = very_good -> Dmg12 = 4; % Multiply Dmg 1 dealt to 2
    	Res1 = good -> Dmg12 = 2;
    	Res1 = not_bad -> Dmg12 = 1;
    	Res1 = bad -> Dmg12 = 0.5;
    	Dmg12 = 0
    ),
    attack(DefenderTypes, AttackerTypes, Res2),
    (   
    	Res2 = very_good -> Dmg21 = 4; % Multiply Dmg 2 dealt to 1
    	Res2 = good -> Dmg21 = 2;
    	Res2 = not_bad -> Dmg21 = 1;
    	Res2 = bad -> Dmg21 = 0.5;
    	Dmg21 = 0
    ),
    (
        Dmg21 =< 0 -> (
            Dmg12 >= 4 -> Result = best;
            Dmg12 >= 2 -> Result = very_good;
            Dmg12 >= 1 -> Result = good;
            Dmg12 >= 0.5 -> Result = not_bad;
            Result = bad
        );
        Dmg21 =< 0.5 -> (
            Dmg12 >= 4 -> Result = best;
            Dmg12 >= 2 -> Result = very_good;
            Dmg12 >= 1 -> Result = good;
            Dmg12 >= 0.5 -> Result = bad;
            Result = very_bad
        );	
   		Dmg21 =< 1 -> (
            Dmg12 >= 4 -> Result = best;
            Dmg12 >= 2 -> Result = good;
            Dmg12 >= 1 -> Result = not_bad;
            Dmg12 >= 0.5 -> Result = bad;
            Result = very_bad
        );
    	Dmg21 =< 2 -> (
            Dmg12 >= 4 -> Result = very_good;
            Dmg12 >= 2 -> Result = good;
            Dmg12 >= 1 -> Result = not_bad;
            Dmg12 >= 0.5 -> Result = bad;
            Result = very_bad
        );
    	Dmg21 =< 4 -> (
            Dmg12 >= 4 -> Result = good;
            Dmg12 >= 2 -> Result = not_bad;
            Dmg12 >= 1 -> Result = bad;
            Dmg12 >= 0.5 -> Result = very_bad;
            Result = very_bad
        )
    ).