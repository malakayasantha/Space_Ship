# Spaceship & Asteroids Arcade Game - B Specification (Space_Ship)

Project is based on B Specification for Spaceship & Asteroids game.

# Explanation of how the simplified Asteroids game works:

Game Setup:

The game grid is 12 squares wide and 7 squares high.The spaceship starts at the home base, located at the bottom left square (1, 1).The goal is to navigate the spaceship to the Starbase at (6, 4).There are 11 asteroids placed at specific locations on the grid.

Spaceship Movement:

The spaceship can move up, down, left, or right. Each move costs 5 power units.The spaceship can also use a warp-drive to jump to any grid square, costing 20 power units. Warp-drive cannot be used to jump to squares occupied by asteroids.

Collisions:

If the spaceship moves into a square occupied by an asteroid, it loses 10 power units and bounces back to its previous square.

Game States:

The game is won if the spaceship reaches the Starbase.
The game is lost if the spaceship runs out of power and cannot move.
The game continues if the spaceship is not at the Starbase and still has power.

Operations:

Normal Moves: MoveUp, MoveDown, MoveLeft, and MoveRight move the spaceship one square in the respective direction and reduce power by 5 units. If the move is invalid (e.g., moving into an asteroid or outside the grid), the spaceship stays in place.
Warp-Drive Move: WarpDrive(newposition) jumps to the specified square unless it is occupied by an asteroid or outside the grid, costing 20 power units.
Mission Status: MissionStatus reports the game's status (WON, LOST, NOT_OVER), the spaceship's location, power reserves, and the number
of collisions.
Mission Route: RegionsVisited reports all the grid squares the spaceship has traveled through.
This setup and operation allow the spaceship to navigate through space, avoid obstacles, and aim to reach the Starbase efficiently while managing power consumption.

# Graphical View
 ![SP1](https://github.com/malakayasantha/Space_Ship/assets/94890947/5620d1cf-977c-4cf8-a9bc-a4dbe2dcbd59)
 ![SP2](https://github.com/malakayasantha/Space_Ship/assets/94890947/d6e578e0-1a8d-4cf9-9381-82564e0254a0)
 ![SP3](https://github.com/malakayasantha/Space_Ship/assets/94890947/09ca5243-5511-49b3-bf3e-3c4fd4332f7c)

# Used Tools
Atelier B
ProB


 
