:- consult('weaponNaraka.pl').

% weapon
?- weapon(greatsword, common).   % Is greatsword a common weapon?
?- weapon(bow, legendary).       % Is bow a legendary weapon?
?- weapon(cannon, rare).         % Is cannon categorized as rare?

% melle
?- melle(greatsword, epic).      % Is greatsword an epic melee weapon?
?- melle(dagger, legendary).     % Is dagger a legendary melee weapon?
?- melle(fists, rare).           % Are fists a rare melee weapon?

% ranged
?- ranged(bow, epic).            % Is bow an epic ranged weapon?
?- ranged(swarm, common).        % Is swarm a common ranged weapon?
?- ranged(pistol, legendary).    % Is pistol a legendary ranged weapon?

% better
?- better(epic, rare).           % Is epic better than rare?
?- better(legendary, common).    % Is legendary better than common?
?- better(rare, legendary).      % Is rare better than legendary?

% better_transitive
?- better_transitive(legendary, rare). % Is legendary transitively better than rare?
?- better_transitive(epic, common).    % Is epic transitively better than common?
?- better_transitive(rare, epic).      % Is rare transitively better than epic?

% better_weapon
?- better_weapon([greatsword, legendary], [dagger, epic]). % Is legendary greatsword better than epic dagger?
?- better_weapon([bow, common], [musket, rare]).          % Is common bow better than rare musket?
?- better_weapon([cannon, epic], [swarm, rare]).          % Is epic cannon better than rare swarm?

% longmelee
?- longmelee(greatsword, common).        % Is greatsword categorized as a common long melee weapon?
?- longmelee(spear, legendary).          % Is spear a legendary long melee weapon?
?- longmelee(polesword, epic).           % Is polesword an epic long melee weapon?

% dualwielded
?- dualwielded(Weapon, rare).            % Which weapon is categorized as a rare dual-wielded weapon?
?- dualwielded(dualhalberds, legendary). % Is dual halberds a legendary dual-wielded weapon?
?- dualwielded(Weapon, common).          % Which weapon is categorized as a common dual-wielded weapon?

% shortmelee
?- shortmelee(Weapon, common).           % Which weapon is categorized as a common short melee weapon?
?- shortmelee(nunchucks, epic).          % Is nunchucks an epic short melee weapon?
?- shortmelee(Weapon, legendary).        % Which weapon is categorized as a legendary short melee weapon?

% middlemelee
?- middlemelee(katana, common).          % Is katana categorized as a common middle melee weapon?
?- middlemelee(Weapon, rare).            % Which weapon is categorized as a rare middle melee weapon?
?- middlemelee(Weapon, epic).            % Which weapon is categorized as an epic middle melee weapon?

% specialmelee
?- specialmelee(bloodrippers, rare).     % Is bloodrippers categorized as a rare special melee weapon?
?- specialmelee(Weapon, epic).           % Which weapon is categorized as an epic special melee weapon?
?- specialmelee(Weapon, legendary).      % Which weapon is categorized as a legendary special melee weapon?

% bowtype
?- bowtype(Weapon, common).              % Which weapon is categorized as a common bow-type ranged weapon?
?- bowtype(repeating_crossbow, epic).    % Is repeating crossbow categorized as an epic bow-type ranged weapon?
?- bowtype(Weapon, legendary).           % Which weapon is categorized as a legendary bow-type ranged weapon?

% guntype
?- guntype(musket, rare).                % Is musket categorized as a rare gun-type ranged weapon?
?- guntype(Weapon, common).              % Which weapon is categorized as a common gun-type ranged weapon?
?- guntype(Weapon, legendary).           % Which weapon is categorized as a legendary gun-type ranged weapon?

% specialranged
?- specialranged(Weapon, common).        % Which weapon is categorized as a common special ranged weapon?
?- specialranged(swarm, epic).           % Is swarm categorized as an epic special ranged weapon?
?- specialranged(Weapon, legendary).     % Which weapon is categorized as a legendary special ranged weapon?

% special
?- special(bloodrippers, epic).          % Is bloodrippers categorized as an epic special weapon?
?- special(Weapon, common).              % Which weapon is categorized as a common special weapon?
?- special(flamebringer, rare).          % Is flamebringer categorized as a rare special weapon?