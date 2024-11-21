% Facts: Attack damage multipliers (Example: normal type taken 0 dmg to ghost type)

% Normal
damage_multiplier(normal, rock, 0.5).
damage_multiplier(normal, steel, 0.5).
damage_multiplier(normal, ghost, 0).
damage_multiplier(normal, electric, 1).
damage_multiplier(normal, normal, 1).
damage_multiplier(normal, fairy, 1).
damage_multiplier(normal, psychic, 1).
damage_multiplier(normal, fighting, 1).
damage_multiplier(normal, dark, 1).
damage_multiplier(normal, poison, 1).
damage_multiplier(normal, fire, 1).
damage_multiplier(normal, ground, 1).
damage_multiplier(normal, water, 1).
damage_multiplier(normal, ice, 1).
damage_multiplier(normal, flying, 1).
damage_multiplier(normal, grass, 1).
damage_multiplier(normal, dragon, 1).
damage_multiplier(normal, bug, 1).

% Fire
damage_multiplier(fire, grass, 2).
damage_multiplier(fire, ice, 2).
damage_multiplier(fire, bug, 2).
damage_multiplier(fire, steel, 2).
damage_multiplier(fire, fire, 0.5).
damage_multiplier(fire, water, 0.5).
damage_multiplier(fire, rock, 0.5).
damage_multiplier(fire, dragon, 0.5).
damage_multiplier(fire, fairy, 1).
damage_multiplier(fire, flying, 1).
damage_multiplier(fire, electric, 1).
damage_multiplier(fire, fighting, 1).
damage_multiplier(fire, ground, 1).
damage_multiplier(fire, psychic, 1).
damage_multiplier(fire, ghost, 1).
damage_multiplier(fire, normal, 1).
damage_multiplier(fire, dark, 1).
damage_multiplier(fire, poison, 1).

% Water
damage_multiplier(water, fire, 2).
damage_multiplier(water, ground, 2).
damage_multiplier(water, rock, 2).
damage_multiplier(water, water, 0.5).
damage_multiplier(water, grass, 0.5).
damage_multiplier(water, dragon, 0.5).
damage_multiplier(water, flying, 1).
damage_multiplier(water, fighting, 1).
damage_multiplier(water, psychic, 1).
damage_multiplier(water, poison, 1).
damage_multiplier(water, ghost, 1).
damage_multiplier(water, normal, 1).
damage_multiplier(water, steel, 1).
damage_multiplier(water, ice, 1).
damage_multiplier(water, bug, 1).
damage_multiplier(water, electric, 1).
damage_multiplier(water, fairy, 1).
damage_multiplier(water, dark, 1).

% Electric
damage_multiplier(electric, water, 2).
damage_multiplier(electric, flying, 2).
damage_multiplier(electric, electric, 0.5).
damage_multiplier(electric, grass, 0.5).
damage_multiplier(electric, dragon, 0.5).
damage_multiplier(electric, ground, 0).
damage_multiplier(electric, normal, 1).
damage_multiplier(electric, ice, 1).
damage_multiplier(electric, poison, 1).
damage_multiplier(electric, fighting, 1).
damage_multiplier(electric, ghost, 1).
damage_multiplier(electric, steel, 1).
damage_multiplier(electric, psychic, 1).
damage_multiplier(electric, bug, 1).
damage_multiplier(electric, rock, 1).
damage_multiplier(electric, fairy, 1).
damage_multiplier(electric, fire, 1).
damage_multiplier(electric, dark, 1).

% Grass
damage_multiplier(grass, water, 2).
damage_multiplier(grass, ground, 2).
damage_multiplier(grass, rock, 2).
damage_multiplier(grass, fire, 0.5).
damage_multiplier(grass, grass, 0.5).
damage_multiplier(grass, poison, 0.5).
damage_multiplier(grass, flying, 0.5).
damage_multiplier(grass, bug, 0.5).
damage_multiplier(grass, dragon, 0.5).
damage_multiplier(grass, steel, 0.5).
damage_multiplier(grass, ghost, 1).
damage_multiplier(grass, dark, 1).
damage_multiplier(grass, electric, 1).
damage_multiplier(grass, fighting, 1).
damage_multiplier(grass, ice, 1).
damage_multiplier(grass, fairy, 1).
damage_multiplier(grass, normal, 1).
damage_multiplier(grass, psychic, 1).

% Ice
damage_multiplier(ice, grass, 2).
damage_multiplier(ice, ground, 2).
damage_multiplier(ice, flying, 2).
damage_multiplier(ice, dragon, 2).
damage_multiplier(ice, fire, 0.5).
damage_multiplier(ice, water, 0.5).
damage_multiplier(ice, ice, 0.5).
damage_multiplier(ice, steel, 0.5).
damage_multiplier(ice, psychic, 1).
damage_multiplier(ice, ghost, 1).
damage_multiplier(ice, bug, 1).
damage_multiplier(ice, poison, 1).
damage_multiplier(ice, dark, 1).
damage_multiplier(ice, rock, 1).
damage_multiplier(ice, electric, 1).
damage_multiplier(ice, fighting, 1).
damage_multiplier(ice, normal, 1).
damage_multiplier(ice, fairy, 1).

% Fighting
damage_multiplier(fighting, normal, 2).
damage_multiplier(fighting, ice, 2).
damage_multiplier(fighting, rock, 2).
damage_multiplier(fighting, dark, 2).
damage_multiplier(fighting, steel, 2).
damage_multiplier(fighting, poison, 0.5).
damage_multiplier(fighting, flying, 0.5).
damage_multiplier(fighting, psychic, 0.5).
damage_multiplier(fighting, bug, 0.5).
damage_multiplier(fighting, fairy, 0.5).
damage_multiplier(fighting, ghost, 0).
damage_multiplier(fighting, fighting, 1).
damage_multiplier(fighting, grass, 1).
damage_multiplier(fighting, fire, 1).
damage_multiplier(fighting, dragon, 1).
damage_multiplier(fighting, electric, 1).
damage_multiplier(fighting, ground, 1).
damage_multiplier(fighting, water, 1).


% Poison
damage_multiplier(poison, grass, 2).
damage_multiplier(poison, fairy, 2).
damage_multiplier(poison, poison, 0.5).
damage_multiplier(poison, ground, 0.5).
damage_multiplier(poison, rock, 0.5).
damage_multiplier(poison, ghost, 0.5).
damage_multiplier(poison, steel, 0).
damage_multiplier(poison, dark, 1).
damage_multiplier(poison, electric, 1).
damage_multiplier(poison, fighting, 1).
damage_multiplier(poison, dragon, 1).
damage_multiplier(poison, water, 1).
damage_multiplier(poison, psychic, 1).
damage_multiplier(poison, flying, 1).
damage_multiplier(poison, bug, 1).
damage_multiplier(poison, ice, 1).
damage_multiplier(poison, fire, 1).
damage_multiplier(poison, normal, 1).

% Ground
damage_multiplier(ground, fire, 2).
damage_multiplier(ground, electric, 2).
damage_multiplier(ground, poison, 2).
damage_multiplier(ground, rock, 2).
damage_multiplier(ground, steel, 2).
damage_multiplier(ground, grass, 0.5).
damage_multiplier(ground, bug, 0.5).
damage_multiplier(ground, flying, 0).
damage_multiplier(ground, dark, 1).
damage_multiplier(ground, psychic, 1).
damage_multiplier(ground, ice, 1).
damage_multiplier(ground, ghost, 1).
damage_multiplier(ground, water, 1).
damage_multiplier(ground, normal, 1).
damage_multiplier(ground, ground, 1).
damage_multiplier(ground, fighting, 1).
damage_multiplier(ground, fairy, 1).
damage_multiplier(ground, dragon, 1).


% Flying
damage_multiplier(flying, grass, 2).
damage_multiplier(flying, fighting, 2).
damage_multiplier(flying, bug, 2).
damage_multiplier(flying, electric, 0.5).
damage_multiplier(flying, rock, 0.5).
damage_multiplier(flying, steel, 0.5).
damage_multiplier(flying, water, 1).
damage_multiplier(flying, ice, 1).
damage_multiplier(flying, dark, 1).
damage_multiplier(flying, poison, 1).
damage_multiplier(flying, dragon, 1).
damage_multiplier(flying, normal, 1).
damage_multiplier(flying, fire, 1).
damage_multiplier(flying, ghost, 1).
damage_multiplier(flying, psychic, 1).
damage_multiplier(flying, flying, 1).
damage_multiplier(flying, ground, 1).
damage_multiplier(flying, fairy, 1).

% Psychic
damage_multiplier(psychic, fighting, 2).
damage_multiplier(psychic, poison, 2).
damage_multiplier(psychic, psychic, 0.5).
damage_multiplier(psychic, steel, 0.5).
damage_multiplier(psychic, dark, 0).
damage_multiplier(psychic, normal, 1).
damage_multiplier(psychic, fire, 1).
damage_multiplier(psychic, electric, 1).
damage_multiplier(psychic, ground, 1).
damage_multiplier(psychic, water, 1).
damage_multiplier(psychic, rock, 1).
damage_multiplier(psychic, ghost, 1).
damage_multiplier(psychic, ice, 1).
damage_multiplier(psychic, grass, 1).
damage_multiplier(psychic, bug, 1).
damage_multiplier(psychic, fairy, 1).
damage_multiplier(psychic, dragon, 1).
damage_multiplier(psychic, flying, 1).

% Bug
damage_multiplier(bug, grass, 2).
damage_multiplier(bug, psychic, 2).
damage_multiplier(bug, dark, 2).
damage_multiplier(bug, fire, 0.5).
damage_multiplier(bug, fighting, 0.5).
damage_multiplier(bug, poison, 0.5).
damage_multiplier(bug, flying, 0.5).
damage_multiplier(bug, ghost, 0.5).
damage_multiplier(bug, steel, 0.5).
damage_multiplier(bug, fairy, 0.5).
damage_multiplier(bug, ground, 1).
damage_multiplier(bug, bug, 1).
damage_multiplier(bug, ice, 1).
damage_multiplier(bug, normal, 1).
damage_multiplier(bug, electric, 1).
damage_multiplier(bug, dragon, 1).
damage_multiplier(bug, water, 1).
damage_multiplier(bug, rock, 1).

% Rock
damage_multiplier(rock, fire, 2).
damage_multiplier(rock, ice, 2).
damage_multiplier(rock, flying, 2).
damage_multiplier(rock, bug, 2).
damage_multiplier(rock, fighting, 0.5).
damage_multiplier(rock, ground, 0.5).
damage_multiplier(rock, steel, 0.5).
damage_multiplier(rock, electric, 1).
damage_multiplier(rock, fairy, 1).
damage_multiplier(rock, grass, 1).
damage_multiplier(rock, dark, 1).
damage_multiplier(rock, poison, 1).
damage_multiplier(rock, rock, 1).
damage_multiplier(rock, normal, 1).
damage_multiplier(rock, psychic, 1).
damage_multiplier(rock, water, 1).
damage_multiplier(rock, dragon, 1).
damage_multiplier(rock, ghost, 1).

% Ghost
damage_multiplier(ghost, ghost, 2).
damage_multiplier(ghost, psychic, 2).
damage_multiplier(ghost, dark, 0.5).
damage_multiplier(ghost, normal, 0).
damage_multiplier(ghost, fire, 1).
damage_multiplier(ghost, fairy, 1).
damage_multiplier(ghost, flying, 1).
damage_multiplier(ghost, bug, 1).
damage_multiplier(ghost, rock, 1).
damage_multiplier(ghost, fighting, 1).
damage_multiplier(ghost, dragon, 1).
damage_multiplier(ghost, steel, 1).
damage_multiplier(ghost, grass, 1).
damage_multiplier(ghost, electric, 1).
damage_multiplier(ghost, water, 1).
damage_multiplier(ghost, poison, 1).
damage_multiplier(ghost, ground, 1).
damage_multiplier(ghost, ice, 1).

% Dragon
damage_multiplier(dragon, dragon, 2).
damage_multiplier(dragon, steel, 0.5).
damage_multiplier(dragon, fairy, 0).
damage_multiplier(dragon, normal, 1).
damage_multiplier(dragon, electric, 1).
damage_multiplier(dragon, fire, 1).
damage_multiplier(dragon, rock, 1).
damage_multiplier(dragon, dark, 1).
damage_multiplier(dragon, grass, 1).
damage_multiplier(dragon, poison, 1).
damage_multiplier(dragon, ghost, 1).
damage_multiplier(dragon, water, 1).
damage_multiplier(dragon, fighting, 1).
damage_multiplier(dragon, ground, 1).
damage_multiplier(dragon, psychic, 1).
damage_multiplier(dragon, bug, 1).
damage_multiplier(dragon, flying, 1).
damage_multiplier(dragon, ice, 1).

% Dark
damage_multiplier(dark, ghost, 2).
damage_multiplier(dark, psychic, 2).
damage_multiplier(dark, fighting, 0.5).
damage_multiplier(dark, dark, 0.5).
damage_multiplier(dark, fairy, 0.5).
damage_multiplier(dark, flying, 1).
damage_multiplier(dark, ground, 1).
damage_multiplier(dark, electric, 1).
damage_multiplier(dark, ice, 1).
damage_multiplier(dark, dragon, 1).
damage_multiplier(dark, poison, 1).
damage_multiplier(dark, fire, 1).
damage_multiplier(dark, rock, 1).
damage_multiplier(dark, bug, 1).
damage_multiplier(dark, water, 1).
damage_multiplier(dark, steel, 1).
damage_multiplier(dark, grass, 1).
damage_multiplier(dark, normal, 1).

% Steel
damage_multiplier(steel, ice, 2).
damage_multiplier(steel, rock, 2).
damage_multiplier(steel, fairy, 2).
damage_multiplier(steel, fire, 0.5).
damage_multiplier(steel, water, 0.5).
damage_multiplier(steel, electric, 0.5).
damage_multiplier(steel, steel, 0.5).
damage_multiplier(steel, poison, 1).
damage_multiplier(steel, grass, 1).
damage_multiplier(steel, dark, 1).
damage_multiplier(steel, fighting, 1).
damage_multiplier(steel, dragon, 1).
damage_multiplier(steel, flying, 1).
damage_multiplier(steel, bug, 1).
damage_multiplier(steel, ground, 1).
damage_multiplier(steel, ghost, 1).
damage_multiplier(steel, normal, 1).
damage_multiplier(steel, psychic, 1).

% Fairy
damage_multiplier(fairy, fighting, 2).
damage_multiplier(fairy, dragon, 2).
damage_multiplier(fairy, dark, 2).
damage_multiplier(fairy, fire, 0.5).
damage_multiplier(fairy, poison, 0.5).
damage_multiplier(fairy, steel, 0.5).
damage_multiplier(fairy, ghost, 1).
damage_multiplier(fairy, fairy, 1).
damage_multiplier(fairy, electric, 1).
damage_multiplier(fairy, psychic, 1).
damage_multiplier(fairy, water, 1).
damage_multiplier(fairy, bug, 1).
damage_multiplier(fairy, rock, 1).
damage_multiplier(fairy, grass, 1).
damage_multiplier(fairy, flying, 1).
damage_multiplier(fairy, ground, 1).
damage_multiplier(fairy, ice, 1).
damage_multiplier(fairy, normal, 1).