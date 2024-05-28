/* FormalCw_SpaceShip
*  Author: Malaka Yasantha 
*  20200510 | w1830176
*  Creation date: 2/1/2024
*/
MACHINE
    SpaceShip

SEES
    Space

SETS
    REPORT = { SUCCESSFULLY_MOVED , CANNOT_MOVE_OUT_OF_KNOWN_SPACE , INSUFFICIENT_POWER , HIT_ASTEROID , CANNOT_WARP_INTO_ASTEROID , CANNOT_WARP_TO_THE_SAME_POSITION , CANNOT_IMMEDIATELY_WARP_INTO_STARBASE } ;
    MOVEMENT = { MOVE_UP , MOVE_DOWN , MOVE_FORWARD , MOVE_BACKWARD , WARP } ;
    DOCKED_STATUS = { YES , NO } ;
    GAME_STATUS = { GAME_WON , GAME_LOST , GAME_NOT_OVER }

CONCRETE_CONSTANTS
    nMovePower , warpDPower , asteroidHitLoss , initialShipPower

PROPERTIES
    nMovePower = 5 &
    warpDPower = 20 &
    asteroidHitLoss = 10 &
    initialShipPower = 100



































ABSTRACT_VARIABLES
    Position_X , Position_Y , power , CollisionsNum , PathRoute , movements

INVARIANT
    Position_X : spaceX &
    Position_Y : spaceY &
    Position_X |-> Position_Y : emptySpace &
    power : INTEGER &
    CollisionsNum : NAT &
    PathRoute : seq ( emptySpace ) &
    movements : seq ( MOVEMENT )

INITIALISATION
    power := initialShipPower ||
    CollisionsNum := 0 ||
    Position_X := prj1 ( spaceX , spaceY ) ( homeBase ) ||
    Position_Y := prj2 ( spaceX , spaceY ) ( homeBase ) ||
    PathRoute := [ homeBase ] ||
    movements := <>

OPERATIONS
     /****************************************************** Moves Up ********************************************************************/
    report , movement <-- MoveUp =
    PRE
        report : REPORT & movement : MOVEMENT & not ( ( Position_X |-> Position_Y = starBase ) or ( power < nMovePower ) )
    THEN
        IF
            ( power >= nMovePower )
        THEN
            IF
                ( Position_X |-> Position_Y + 1 : space )
            THEN
                IF
                    not ( ( Position_X |-> Position_Y + 1 : asteroids ) )
                THEN
                    IF
                        ( power - nMovePower >= 0 )
                    THEN
                        Position_Y := Position_Y + 1 ||
                        power := power - nMovePower ||
                        PathRoute := PathRoute <- ( Position_X |-> Position_Y + 1 ) ||
                        movements := movements <- MOVE_UP ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_UP
                    ELSE
                        // Prevents power going below 0
                        Position_Y := Position_Y + 1 ||
                        power := 0 ||
                        PathRoute := PathRoute <- ( Position_X |-> Position_Y + 1 ) ||
                        movements := movements <- MOVE_UP ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_UP
                    END
                ELSE
                    IF
                        ( power - nMovePower - asteroidHitLoss >= 0 )
                    THEN
                        power := power - nMovePower - asteroidHitLoss ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_UP
                    ELSE
                        // Prevents power going below 0
                        power := 0 ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_UP
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;
/************************************************************* Moves Down ****************************************************************/
    report , movement <-- MoveDown =
    PRE
        report : REPORT & movement : MOVEMENT & not ( ( Position_X |-> Position_Y = starBase ) or ( power < nMovePower ) )
    THEN
        IF
            ( power >= nMovePower )
        THEN
            IF
                ( Position_X |-> Position_Y - 1 : space )
            THEN
                IF
                    not ( ( Position_X |-> Position_Y - 1 : asteroids ) )
                THEN
                    IF
                        ( power - nMovePower >= 0 )
                    THEN
                        Position_Y := Position_Y - 1 ||
                        power := power - nMovePower ||
                        PathRoute := PathRoute <- ( Position_X |-> Position_Y - 1 ) ||
                        movements := movements <- MOVE_DOWN ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_DOWN
                    ELSE
                        // Prevents power going below 0
                        Position_Y := Position_Y - 1 ||
                        power := 0 ||
                        PathRoute := PathRoute <- ( Position_X |-> Position_Y - 1 ) ||
                        movements := movements <- MOVE_DOWN ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_DOWN
                    END
                ELSE
                    IF
                        ( power - nMovePower - asteroidHitLoss >= 0 )
                    THEN
                        power := power - nMovePower - asteroidHitLoss ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_DOWN
                    ELSE
                        // Prevents power going below 0
                        power := 0 ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_DOWN
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

/**************************************************** Moves Backward ***********************************************************/
    report , movement <-- MoveBackward =
    PRE
        report : REPORT & movement : MOVEMENT & not ( ( Position_X |-> Position_Y = starBase ) or ( power < nMovePower ) )
    THEN
        IF
            ( power >= nMovePower )
        THEN
            IF
                ( Position_X - 1 |-> Position_Y : space )
            THEN
                IF
                    not ( ( Position_X - 1 |-> Position_Y : asteroids ) )
                THEN
                    IF
                        ( power - nMovePower >= 0 )
                    THEN
                        Position_X := Position_X - 1 ||
                        power := power - nMovePower ||
                        PathRoute := PathRoute <- ( Position_X - 1 |-> Position_Y ) ||
                        movements := movements <- MOVE_BACKWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_BACKWARD
                    ELSE
                        // Prevents power going below 0
                        Position_X := Position_X - 1 ||
                        power := 0 ||
                        PathRoute := PathRoute <- ( Position_X - 1 |-> Position_Y ) ||
                        movements := movements <- MOVE_BACKWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_BACKWARD
                    END
                ELSE
                    IF
                        ( power - nMovePower - asteroidHitLoss >= 0 )
                    THEN
                        power := power - nMovePower - asteroidHitLoss ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_BACKWARD
                    ELSE
                        // Prevents power going below 0
                        power := 0 ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_BACKWARD
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

/************************************************************** Moves Forward  ************************************************/
    report , movement <-- MoveForward =
    PRE
        report : REPORT & movement : MOVEMENT & not ( ( Position_X |-> Position_Y = starBase ) or ( power < nMovePower ) )
    THEN
        IF
            ( power >= nMovePower )
        THEN
            IF
                ( Position_X + 1 |-> Position_Y : space )
            THEN
                IF
                    not ( ( Position_X + 1 |-> Position_Y : asteroids ) )
                THEN
                    IF
                        ( power - nMovePower >= 0 )
                    THEN
                        Position_X := Position_X + 1 ||
                        power := power - nMovePower ||
                        PathRoute := PathRoute <- ( Position_X + 1 |-> Position_Y ) ||
                        movements := movements <- MOVE_FORWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_FORWARD
                    ELSE
                        // Prevents power going below 0
                        Position_X := Position_X + 1 ||
                        power := 0 ||
                        PathRoute := PathRoute <- ( Position_X + 1 |-> Position_Y ) ||
                        movements := movements <- MOVE_FORWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_FORWARD
                    END
                ELSE
                    IF
                        ( power - nMovePower - asteroidHitLoss >= 0 )
                    THEN
                        power := power - nMovePower - asteroidHitLoss ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_FORWARD
                    ELSE
                        // Prevents power going below 0
                        power := 0 ||
                        CollisionsNum := CollisionsNum + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_FORWARD
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

/*********************************************** Performs Warp Drive to the given position **************************************************/
    report , movement <-- EngageWarpDrive ( newXPosition , newYPosition ) =
    PRE
        report : REPORT & movement : MOVEMENT &
        newXPosition : NAT1 & newYPosition : NAT1 &
        not ( ( Position_X |-> Position_Y = starBase ) or ( power < nMovePower ) )
    THEN
        IF
            ( power >= warpDPower )
        THEN
            IF
                ( newXPosition |-> newYPosition : space )
            THEN
                IF
                    ( newXPosition = Position_X & newYPosition = Position_Y )
                THEN
                    report := CANNOT_WARP_TO_THE_SAME_POSITION
                ELSE
                    IF
                        ( size ( PathRoute ) = 1 & newXPosition |-> newYPosition = starBase )
                    THEN
                        report := CANNOT_IMMEDIATELY_WARP_INTO_STARBASE
                    ELSE
                        IF
                            not ( ( newXPosition |-> newYPosition : asteroids ) )
                        THEN
                            IF
                                ( power - warpDPower >= 0 )
                            THEN
                                power := power - warpDPower ||
                                Position_X := newXPosition ||
                                Position_Y := newYPosition ||
                                PathRoute := PathRoute <- ( newXPosition |-> newYPosition ) ||
                                movements := movements <- WARP ||
                                report := SUCCESSFULLY_MOVED ||
                                movement := WARP
                            ELSE
                                // Prevents power going below 0
                                power := 0 ||
                                Position_X := newXPosition ||
                                Position_Y := newYPosition ||
                                PathRoute := PathRoute <- ( newXPosition |-> newYPosition ) ||
                                movements := movements <- WARP ||
                                report := SUCCESSFULLY_MOVED ||
                                movement := WARP
                            END
                        ELSE
                            report := CANNOT_WARP_INTO_ASTEROID
                        END
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

 /************************************************ Gives the current status of the space ship ***************************************************************/
    currentLocation , currentPower , asteroidCollisions <-- MissionStatus =
    BEGIN
        currentLocation := Position_X |-> Position_Y ||
        currentPower := power ||
        asteroidCollisions := CollisionsNum
    END ;


 /*************************************** Gives the route that the space ship has CurrentLocation ***********************************************************/
    currentLocation <-- Current_Location =
    BEGIN
       currentLocation := Position_X |-> Position_Y

    END ;

/************************************************** Gives the route that the space ship has current power reserves ******************************************/
    currentPower <-- current_Power_Reserves =
    BEGIN
        currentPower := power

    END ;

/************************************************** Gives the route that the space ship has asteroid collisions *********************************************/
    asteroidCollisions <-- Asteroid_Collisions =
    BEGIN
        asteroidCollisions := CollisionsNum

    END ;
/*********************************************** Reports whether the space ship is docked at the star base **************************************************/
    dockedStatus <-- Docked_At_Starbase =
    PRE
        dockedStatus : DOCKED_STATUS
    THEN
        IF
            ( ( Position_X |-> Position_Y = starBase ) )
        THEN
            dockedStatus := YES
        ELSE
            dockedStatus := NO
        END
    END ;
/**************************************************************** Reports the game status *******************************************************************/
    status <-- Game_Status =
    PRE
        status : GAME_STATUS
    THEN
        IF
            ( ( Position_X |-> Position_Y = starBase ) )
        THEN
            status := GAME_WON
        ELSE
            IF
                ( power < nMovePower )
            THEN
                status := GAME_LOST
            ELSE
                status := GAME_NOT_OVER
            END

        END
    END ;
/************************************************ Resets the game, and starts again from the beginning ******************************************************/
    resetGame =
    PRE
        ( Position_X |-> Position_Y = starBase ) or ( power < nMovePower )
    THEN
        power := initialShipPower ||
        CollisionsNum := 0 ||
        Position_X := prj1 ( spaceX , spaceY ) ( homeBase ) ||
        Position_Y := prj2 ( spaceX , spaceY ) ( homeBase ) ||
        PathRoute := [ homeBase ] ||
        movements := <>
    END
END
