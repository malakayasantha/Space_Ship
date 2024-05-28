Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SpaceShip))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SpaceShip))==(Machine(SpaceShip));
  Level(Machine(SpaceShip))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SpaceShip)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SpaceShip))==(Space)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SpaceShip))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SpaceShip))==(?);
  List_Includes(Machine(SpaceShip))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SpaceShip))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SpaceShip))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SpaceShip))==(?);
  Context_List_Variables(Machine(SpaceShip))==(?);
  Abstract_List_Variables(Machine(SpaceShip))==(?);
  Local_List_Variables(Machine(SpaceShip))==(movements,PathRoute,CollisionsNum,power,Position_Y,Position_X);
  List_Variables(Machine(SpaceShip))==(movements,PathRoute,CollisionsNum,power,Position_Y,Position_X);
  External_List_Variables(Machine(SpaceShip))==(movements,PathRoute,CollisionsNum,power,Position_Y,Position_X)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SpaceShip))==(?);
  Abstract_List_VisibleVariables(Machine(SpaceShip))==(?);
  External_List_VisibleVariables(Machine(SpaceShip))==(?);
  Expanded_List_VisibleVariables(Machine(SpaceShip))==(?);
  List_VisibleVariables(Machine(SpaceShip))==(?);
  Internal_List_VisibleVariables(Machine(SpaceShip))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SpaceShip))==(btrue);
  Gluing_List_Invariant(Machine(SpaceShip))==(btrue);
  Expanded_List_Invariant(Machine(SpaceShip))==(btrue);
  Abstract_List_Invariant(Machine(SpaceShip))==(btrue);
  Context_List_Invariant(Machine(SpaceShip))==(btrue);
  List_Invariant(Machine(SpaceShip))==(Position_X: spaceX & Position_Y: spaceY & Position_X|->Position_Y: emptySpace & power: INTEGER & CollisionsNum: NAT & PathRoute: seq(emptySpace) & movements: seq(MOVEMENT))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SpaceShip))==(btrue);
  Abstract_List_Assertions(Machine(SpaceShip))==(btrue);
  Context_List_Assertions(Machine(SpaceShip))==(btrue);
  List_Assertions(Machine(SpaceShip))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SpaceShip))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SpaceShip))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SpaceShip))==(power,CollisionsNum,Position_X,Position_Y,PathRoute,movements:=initialShipPower,0,prj1(spaceX,spaceY)(homeBase),prj2(spaceX,spaceY)(homeBase),[homeBase],<>);
  Context_List_Initialisation(Machine(SpaceShip))==(skip);
  List_Initialisation(Machine(SpaceShip))==(power:=initialShipPower || CollisionsNum:=0 || Position_X:=prj1(spaceX,spaceY)(homeBase) || Position_Y:=prj2(spaceX,spaceY)(homeBase) || PathRoute:=[homeBase] || movements:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SpaceShip))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(SpaceShip),Machine(Space))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SpaceShip))==(btrue);
  List_Constraints(Machine(SpaceShip))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SpaceShip))==(MoveUp,MoveDown,MoveBackward,MoveForward,EngageWarpDrive,MissionStatus,Current_Location,current_Power_Reserves,Asteroid_Collisions,Docked_At_Starbase,Game_Status,resetGame);
  List_Operations(Machine(SpaceShip))==(MoveUp,MoveDown,MoveBackward,MoveForward,EngageWarpDrive,MissionStatus,Current_Location,current_Power_Reserves,Asteroid_Collisions,Docked_At_Starbase,Game_Status,resetGame)
END
&
THEORY ListInputX IS
  List_Input(Machine(SpaceShip),MoveUp)==(?);
  List_Input(Machine(SpaceShip),MoveDown)==(?);
  List_Input(Machine(SpaceShip),MoveBackward)==(?);
  List_Input(Machine(SpaceShip),MoveForward)==(?);
  List_Input(Machine(SpaceShip),EngageWarpDrive)==(newXPosition,newYPosition);
  List_Input(Machine(SpaceShip),MissionStatus)==(?);
  List_Input(Machine(SpaceShip),Current_Location)==(?);
  List_Input(Machine(SpaceShip),current_Power_Reserves)==(?);
  List_Input(Machine(SpaceShip),Asteroid_Collisions)==(?);
  List_Input(Machine(SpaceShip),Docked_At_Starbase)==(?);
  List_Input(Machine(SpaceShip),Game_Status)==(?);
  List_Input(Machine(SpaceShip),resetGame)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(SpaceShip),MoveUp)==(report,movement);
  List_Output(Machine(SpaceShip),MoveDown)==(report,movement);
  List_Output(Machine(SpaceShip),MoveBackward)==(report,movement);
  List_Output(Machine(SpaceShip),MoveForward)==(report,movement);
  List_Output(Machine(SpaceShip),EngageWarpDrive)==(report,movement);
  List_Output(Machine(SpaceShip),MissionStatus)==(currentLocation,currentPower,asteroidCollisions);
  List_Output(Machine(SpaceShip),Current_Location)==(currentLocation);
  List_Output(Machine(SpaceShip),current_Power_Reserves)==(currentPower);
  List_Output(Machine(SpaceShip),Asteroid_Collisions)==(asteroidCollisions);
  List_Output(Machine(SpaceShip),Docked_At_Starbase)==(dockedStatus);
  List_Output(Machine(SpaceShip),Game_Status)==(status);
  List_Output(Machine(SpaceShip),resetGame)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(SpaceShip),MoveUp)==(report,movement <-- MoveUp);
  List_Header(Machine(SpaceShip),MoveDown)==(report,movement <-- MoveDown);
  List_Header(Machine(SpaceShip),MoveBackward)==(report,movement <-- MoveBackward);
  List_Header(Machine(SpaceShip),MoveForward)==(report,movement <-- MoveForward);
  List_Header(Machine(SpaceShip),EngageWarpDrive)==(report,movement <-- EngageWarpDrive(newXPosition,newYPosition));
  List_Header(Machine(SpaceShip),MissionStatus)==(currentLocation,currentPower,asteroidCollisions <-- MissionStatus);
  List_Header(Machine(SpaceShip),Current_Location)==(currentLocation <-- Current_Location);
  List_Header(Machine(SpaceShip),current_Power_Reserves)==(currentPower <-- current_Power_Reserves);
  List_Header(Machine(SpaceShip),Asteroid_Collisions)==(asteroidCollisions <-- Asteroid_Collisions);
  List_Header(Machine(SpaceShip),Docked_At_Starbase)==(dockedStatus <-- Docked_At_Starbase);
  List_Header(Machine(SpaceShip),Game_Status)==(status <-- Game_Status);
  List_Header(Machine(SpaceShip),resetGame)==(resetGame)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(SpaceShip),MoveUp)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower));
  List_Precondition(Machine(SpaceShip),MoveDown)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower));
  List_Precondition(Machine(SpaceShip),MoveBackward)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower));
  List_Precondition(Machine(SpaceShip),MoveForward)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower));
  List_Precondition(Machine(SpaceShip),EngageWarpDrive)==(report: REPORT & movement: MOVEMENT & newXPosition: NAT1 & newYPosition: NAT1 & not(Position_X|->Position_Y = starBase or power<nMovePower));
  List_Precondition(Machine(SpaceShip),MissionStatus)==(btrue);
  List_Precondition(Machine(SpaceShip),Current_Location)==(btrue);
  List_Precondition(Machine(SpaceShip),current_Power_Reserves)==(btrue);
  List_Precondition(Machine(SpaceShip),Asteroid_Collisions)==(btrue);
  List_Precondition(Machine(SpaceShip),Docked_At_Starbase)==(dockedStatus: DOCKED_STATUS);
  List_Precondition(Machine(SpaceShip),Game_Status)==(status: GAME_STATUS);
  List_Precondition(Machine(SpaceShip),resetGame)==(Position_X|->Position_Y = starBase or power<nMovePower)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(SpaceShip),resetGame)==(Position_X|->Position_Y = starBase or power<nMovePower | power,CollisionsNum,Position_X,Position_Y,PathRoute,movements:=initialShipPower,0,prj1(spaceX,spaceY)(homeBase),prj2(spaceX,spaceY)(homeBase),[homeBase],<>);
  Expanded_List_Substitution(Machine(SpaceShip),Game_Status)==(status: GAME_STATUS | Position_X|->Position_Y = starBase ==> status:=GAME_WON [] not(Position_X|->Position_Y = starBase) ==> (power<nMovePower ==> status:=GAME_LOST [] not(power<nMovePower) ==> status:=GAME_NOT_OVER));
  Expanded_List_Substitution(Machine(SpaceShip),Docked_At_Starbase)==(dockedStatus: DOCKED_STATUS | Position_X|->Position_Y = starBase ==> dockedStatus:=YES [] not(Position_X|->Position_Y = starBase) ==> dockedStatus:=NO);
  Expanded_List_Substitution(Machine(SpaceShip),Asteroid_Collisions)==(btrue | asteroidCollisions:=CollisionsNum);
  Expanded_List_Substitution(Machine(SpaceShip),current_Power_Reserves)==(btrue | currentPower:=power);
  Expanded_List_Substitution(Machine(SpaceShip),Current_Location)==(btrue | currentLocation:=Position_X|->Position_Y);
  Expanded_List_Substitution(Machine(SpaceShip),MissionStatus)==(btrue | currentLocation,currentPower,asteroidCollisions:=Position_X|->Position_Y,power,CollisionsNum);
  Expanded_List_Substitution(Machine(SpaceShip),EngageWarpDrive)==(report: REPORT & movement: MOVEMENT & newXPosition: NAT1 & newYPosition: NAT1 & not(Position_X|->Position_Y = starBase or power<nMovePower) | power>=warpDPower ==> (newXPosition|->newYPosition: space ==> (newXPosition = Position_X & newYPosition = Position_Y ==> report:=CANNOT_WARP_TO_THE_SAME_POSITION [] not(newXPosition = Position_X & newYPosition = Position_Y) ==> (size(PathRoute) = 1 & newXPosition|->newYPosition = starBase ==> report:=CANNOT_IMMEDIATELY_WARP_INTO_STARBASE [] not(size(PathRoute) = 1 & newXPosition|->newYPosition = starBase) ==> (not(newXPosition|->newYPosition: asteroids) ==> (power-warpDPower>=0 ==> power,Position_X,Position_Y,PathRoute,movements,report,movement:=power-warpDPower,newXPosition,newYPosition,PathRoute<-(newXPosition|->newYPosition),movements<-WARP,SUCCESSFULLY_MOVED,WARP [] not(power-warpDPower>=0) ==> power,Position_X,Position_Y,PathRoute,movements,report,movement:=0,newXPosition,newYPosition,PathRoute<-(newXPosition|->newYPosition),movements<-WARP,SUCCESSFULLY_MOVED,WARP) [] not(not(newXPosition|->newYPosition: asteroids)) ==> report:=CANNOT_WARP_INTO_ASTEROID))) [] not(newXPosition|->newYPosition: space) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(power>=warpDPower) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveForward)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower) | power>=nMovePower ==> (Position_X+1|->Position_Y: space ==> (not(Position_X+1|->Position_Y: asteroids) ==> (power-nMovePower>=0 ==> Position_X,power,PathRoute,movements,report,movement:=Position_X+1,power-nMovePower,PathRoute<-(Position_X+1|->Position_Y),movements<-MOVE_FORWARD,SUCCESSFULLY_MOVED,MOVE_FORWARD [] not(power-nMovePower>=0) ==> Position_X,power,PathRoute,movements,report,movement:=Position_X+1,0,PathRoute<-(Position_X+1|->Position_Y),movements<-MOVE_FORWARD,SUCCESSFULLY_MOVED,MOVE_FORWARD) [] not(not(Position_X+1|->Position_Y: asteroids)) ==> (power-nMovePower-asteroidHitLoss>=0 ==> power,CollisionsNum,report,movement:=power-nMovePower-asteroidHitLoss,CollisionsNum+1,HIT_ASTEROID,MOVE_FORWARD [] not(power-nMovePower-asteroidHitLoss>=0) ==> power,CollisionsNum,report,movement:=0,CollisionsNum+1,HIT_ASTEROID,MOVE_FORWARD)) [] not(Position_X+1|->Position_Y: space) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(power>=nMovePower) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveBackward)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower) | power>=nMovePower ==> (Position_X-1|->Position_Y: space ==> (not(Position_X-1|->Position_Y: asteroids) ==> (power-nMovePower>=0 ==> Position_X,power,PathRoute,movements,report,movement:=Position_X-1,power-nMovePower,PathRoute<-(Position_X-1|->Position_Y),movements<-MOVE_BACKWARD,SUCCESSFULLY_MOVED,MOVE_BACKWARD [] not(power-nMovePower>=0) ==> Position_X,power,PathRoute,movements,report,movement:=Position_X-1,0,PathRoute<-(Position_X-1|->Position_Y),movements<-MOVE_BACKWARD,SUCCESSFULLY_MOVED,MOVE_BACKWARD) [] not(not(Position_X-1|->Position_Y: asteroids)) ==> (power-nMovePower-asteroidHitLoss>=0 ==> power,CollisionsNum,report,movement:=power-nMovePower-asteroidHitLoss,CollisionsNum+1,HIT_ASTEROID,MOVE_BACKWARD [] not(power-nMovePower-asteroidHitLoss>=0) ==> power,CollisionsNum,report,movement:=0,CollisionsNum+1,HIT_ASTEROID,MOVE_BACKWARD)) [] not(Position_X-1|->Position_Y: space) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(power>=nMovePower) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveDown)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower) | power>=nMovePower ==> (Position_X|->Position_Y-1: space ==> (not(Position_X|->Position_Y-1: asteroids) ==> (power-nMovePower>=0 ==> Position_Y,power,PathRoute,movements,report,movement:=Position_Y-1,power-nMovePower,PathRoute<-(Position_X|->Position_Y-1),movements<-MOVE_DOWN,SUCCESSFULLY_MOVED,MOVE_DOWN [] not(power-nMovePower>=0) ==> Position_Y,power,PathRoute,movements,report,movement:=Position_Y-1,0,PathRoute<-(Position_X|->Position_Y-1),movements<-MOVE_DOWN,SUCCESSFULLY_MOVED,MOVE_DOWN) [] not(not(Position_X|->Position_Y-1: asteroids)) ==> (power-nMovePower-asteroidHitLoss>=0 ==> power,CollisionsNum,report,movement:=power-nMovePower-asteroidHitLoss,CollisionsNum+1,HIT_ASTEROID,MOVE_DOWN [] not(power-nMovePower-asteroidHitLoss>=0) ==> power,CollisionsNum,report,movement:=0,CollisionsNum+1,HIT_ASTEROID,MOVE_DOWN)) [] not(Position_X|->Position_Y-1: space) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(power>=nMovePower) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveUp)==(report: REPORT & movement: MOVEMENT & not(Position_X|->Position_Y = starBase or power<nMovePower) | power>=nMovePower ==> (Position_X|->Position_Y+1: space ==> (not(Position_X|->Position_Y+1: asteroids) ==> (power-nMovePower>=0 ==> Position_Y,power,PathRoute,movements,report,movement:=Position_Y+1,power-nMovePower,PathRoute<-(Position_X|->Position_Y+1),movements<-MOVE_UP,SUCCESSFULLY_MOVED,MOVE_UP [] not(power-nMovePower>=0) ==> Position_Y,power,PathRoute,movements,report,movement:=Position_Y+1,0,PathRoute<-(Position_X|->Position_Y+1),movements<-MOVE_UP,SUCCESSFULLY_MOVED,MOVE_UP) [] not(not(Position_X|->Position_Y+1: asteroids)) ==> (power-nMovePower-asteroidHitLoss>=0 ==> power,CollisionsNum,report,movement:=power-nMovePower-asteroidHitLoss,CollisionsNum+1,HIT_ASTEROID,MOVE_UP [] not(power-nMovePower-asteroidHitLoss>=0) ==> power,CollisionsNum,report,movement:=0,CollisionsNum+1,HIT_ASTEROID,MOVE_UP)) [] not(Position_X|->Position_Y+1: space) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(power>=nMovePower) ==> report:=INSUFFICIENT_POWER);
  List_Substitution(Machine(SpaceShip),MoveUp)==(IF power>=nMovePower THEN IF Position_X|->Position_Y+1: space THEN IF not(Position_X|->Position_Y+1: asteroids) THEN IF power-nMovePower>=0 THEN Position_Y:=Position_Y+1 || power:=power-nMovePower || PathRoute:=PathRoute<-(Position_X|->Position_Y+1) || movements:=movements<-MOVE_UP || report:=SUCCESSFULLY_MOVED || movement:=MOVE_UP ELSE Position_Y:=Position_Y+1 || power:=0 || PathRoute:=PathRoute<-(Position_X|->Position_Y+1) || movements:=movements<-MOVE_UP || report:=SUCCESSFULLY_MOVED || movement:=MOVE_UP END ELSE IF power-nMovePower-asteroidHitLoss>=0 THEN power:=power-nMovePower-asteroidHitLoss || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_UP ELSE power:=0 || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_UP END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MoveDown)==(IF power>=nMovePower THEN IF Position_X|->Position_Y-1: space THEN IF not(Position_X|->Position_Y-1: asteroids) THEN IF power-nMovePower>=0 THEN Position_Y:=Position_Y-1 || power:=power-nMovePower || PathRoute:=PathRoute<-(Position_X|->Position_Y-1) || movements:=movements<-MOVE_DOWN || report:=SUCCESSFULLY_MOVED || movement:=MOVE_DOWN ELSE Position_Y:=Position_Y-1 || power:=0 || PathRoute:=PathRoute<-(Position_X|->Position_Y-1) || movements:=movements<-MOVE_DOWN || report:=SUCCESSFULLY_MOVED || movement:=MOVE_DOWN END ELSE IF power-nMovePower-asteroidHitLoss>=0 THEN power:=power-nMovePower-asteroidHitLoss || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_DOWN ELSE power:=0 || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_DOWN END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MoveBackward)==(IF power>=nMovePower THEN IF Position_X-1|->Position_Y: space THEN IF not(Position_X-1|->Position_Y: asteroids) THEN IF power-nMovePower>=0 THEN Position_X:=Position_X-1 || power:=power-nMovePower || PathRoute:=PathRoute<-(Position_X-1|->Position_Y) || movements:=movements<-MOVE_BACKWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_BACKWARD ELSE Position_X:=Position_X-1 || power:=0 || PathRoute:=PathRoute<-(Position_X-1|->Position_Y) || movements:=movements<-MOVE_BACKWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_BACKWARD END ELSE IF power-nMovePower-asteroidHitLoss>=0 THEN power:=power-nMovePower-asteroidHitLoss || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_BACKWARD ELSE power:=0 || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_BACKWARD END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MoveForward)==(IF power>=nMovePower THEN IF Position_X+1|->Position_Y: space THEN IF not(Position_X+1|->Position_Y: asteroids) THEN IF power-nMovePower>=0 THEN Position_X:=Position_X+1 || power:=power-nMovePower || PathRoute:=PathRoute<-(Position_X+1|->Position_Y) || movements:=movements<-MOVE_FORWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_FORWARD ELSE Position_X:=Position_X+1 || power:=0 || PathRoute:=PathRoute<-(Position_X+1|->Position_Y) || movements:=movements<-MOVE_FORWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_FORWARD END ELSE IF power-nMovePower-asteroidHitLoss>=0 THEN power:=power-nMovePower-asteroidHitLoss || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_FORWARD ELSE power:=0 || CollisionsNum:=CollisionsNum+1 || report:=HIT_ASTEROID || movement:=MOVE_FORWARD END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),EngageWarpDrive)==(IF power>=warpDPower THEN IF newXPosition|->newYPosition: space THEN IF newXPosition = Position_X & newYPosition = Position_Y THEN report:=CANNOT_WARP_TO_THE_SAME_POSITION ELSE IF size(PathRoute) = 1 & newXPosition|->newYPosition = starBase THEN report:=CANNOT_IMMEDIATELY_WARP_INTO_STARBASE ELSE IF not(newXPosition|->newYPosition: asteroids) THEN IF power-warpDPower>=0 THEN power:=power-warpDPower || Position_X:=newXPosition || Position_Y:=newYPosition || PathRoute:=PathRoute<-(newXPosition|->newYPosition) || movements:=movements<-WARP || report:=SUCCESSFULLY_MOVED || movement:=WARP ELSE power:=0 || Position_X:=newXPosition || Position_Y:=newYPosition || PathRoute:=PathRoute<-(newXPosition|->newYPosition) || movements:=movements<-WARP || report:=SUCCESSFULLY_MOVED || movement:=WARP END ELSE report:=CANNOT_WARP_INTO_ASTEROID END END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MissionStatus)==(currentLocation:=Position_X|->Position_Y || currentPower:=power || asteroidCollisions:=CollisionsNum);
  List_Substitution(Machine(SpaceShip),Current_Location)==(currentLocation:=Position_X|->Position_Y);
  List_Substitution(Machine(SpaceShip),current_Power_Reserves)==(currentPower:=power);
  List_Substitution(Machine(SpaceShip),Asteroid_Collisions)==(asteroidCollisions:=CollisionsNum);
  List_Substitution(Machine(SpaceShip),Docked_At_Starbase)==(IF Position_X|->Position_Y = starBase THEN dockedStatus:=YES ELSE dockedStatus:=NO END);
  List_Substitution(Machine(SpaceShip),Game_Status)==(IF Position_X|->Position_Y = starBase THEN status:=GAME_WON ELSE IF power<nMovePower THEN status:=GAME_LOST ELSE status:=GAME_NOT_OVER END END);
  List_Substitution(Machine(SpaceShip),resetGame)==(power:=initialShipPower || CollisionsNum:=0 || Position_X:=prj1(spaceX,spaceY)(homeBase) || Position_Y:=prj2(spaceX,spaceY)(homeBase) || PathRoute:=[homeBase] || movements:=<>)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SpaceShip))==(nMovePower,warpDPower,asteroidHitLoss,initialShipPower);
  Inherited_List_Constants(Machine(SpaceShip))==(?);
  List_Constants(Machine(SpaceShip))==(nMovePower,warpDPower,asteroidHitLoss,initialShipPower)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(SpaceShip),REPORT)==({SUCCESSFULLY_MOVED,CANNOT_MOVE_OUT_OF_KNOWN_SPACE,INSUFFICIENT_POWER,HIT_ASTEROID,CANNOT_WARP_INTO_ASTEROID,CANNOT_WARP_TO_THE_SAME_POSITION,CANNOT_IMMEDIATELY_WARP_INTO_STARBASE});
  Context_List_Enumerated(Machine(SpaceShip))==(?);
  Context_List_Defered(Machine(SpaceShip))==(?);
  Context_List_Sets(Machine(SpaceShip))==(?);
  List_Valuable_Sets(Machine(SpaceShip))==(?);
  Inherited_List_Enumerated(Machine(SpaceShip))==(?);
  Inherited_List_Defered(Machine(SpaceShip))==(?);
  Inherited_List_Sets(Machine(SpaceShip))==(?);
  List_Enumerated(Machine(SpaceShip))==(REPORT,MOVEMENT,DOCKED_STATUS,GAME_STATUS);
  List_Defered(Machine(SpaceShip))==(?);
  List_Sets(Machine(SpaceShip))==(REPORT,MOVEMENT,DOCKED_STATUS,GAME_STATUS);
  Set_Definition(Machine(SpaceShip),MOVEMENT)==({MOVE_UP,MOVE_DOWN,MOVE_FORWARD,MOVE_BACKWARD,WARP});
  Set_Definition(Machine(SpaceShip),DOCKED_STATUS)==({YES,NO});
  Set_Definition(Machine(SpaceShip),GAME_STATUS)==({GAME_WON,GAME_LOST,GAME_NOT_OVER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SpaceShip))==(?);
  Expanded_List_HiddenConstants(Machine(SpaceShip))==(?);
  List_HiddenConstants(Machine(SpaceShip))==(?);
  External_List_HiddenConstants(Machine(SpaceShip))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SpaceShip))==(btrue);
  Context_List_Properties(Machine(SpaceShip))==(spaceX = 1..12 & spaceY = 1..7 & space = spaceX*spaceY & asteroids <: space & asteroids = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & emptySpace <: space & emptySpace/\asteroids = {} & emptySpace\/asteroids = space & homeBase: emptySpace & homeBase = 1|->1 & starBase: emptySpace & starBase = 6|->4);
  Inherited_List_Properties(Machine(SpaceShip))==(btrue);
  List_Properties(Machine(SpaceShip))==(nMovePower = 5 & warpDPower = 20 & asteroidHitLoss = 10 & initialShipPower = 100 & REPORT: FIN(INTEGER) & not(REPORT = {}) & MOVEMENT: FIN(INTEGER) & not(MOVEMENT = {}) & DOCKED_STATUS: FIN(INTEGER) & not(DOCKED_STATUS = {}) & GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(SpaceShip),Machine(Space))==(?);
  Seen_Context_List_Enumerated(Machine(SpaceShip))==(?);
  Seen_Context_List_Invariant(Machine(SpaceShip))==(btrue);
  Seen_Context_List_Assertions(Machine(SpaceShip))==(btrue);
  Seen_Context_List_Properties(Machine(SpaceShip))==(btrue);
  Seen_List_Constraints(Machine(SpaceShip))==(btrue);
  Seen_List_Operations(Machine(SpaceShip),Machine(Space))==(?);
  Seen_Expanded_List_Invariant(Machine(SpaceShip),Machine(Space))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SpaceShip),MoveUp)==(?);
  List_ANY_Var(Machine(SpaceShip),MoveDown)==(?);
  List_ANY_Var(Machine(SpaceShip),MoveBackward)==(?);
  List_ANY_Var(Machine(SpaceShip),MoveForward)==(?);
  List_ANY_Var(Machine(SpaceShip),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(SpaceShip),MissionStatus)==(?);
  List_ANY_Var(Machine(SpaceShip),Current_Location)==(?);
  List_ANY_Var(Machine(SpaceShip),current_Power_Reserves)==(?);
  List_ANY_Var(Machine(SpaceShip),Asteroid_Collisions)==(?);
  List_ANY_Var(Machine(SpaceShip),Docked_At_Starbase)==(?);
  List_ANY_Var(Machine(SpaceShip),Game_Status)==(?);
  List_ANY_Var(Machine(SpaceShip),resetGame)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SpaceShip)) == (nMovePower,warpDPower,asteroidHitLoss,initialShipPower,REPORT,MOVEMENT,DOCKED_STATUS,GAME_STATUS,SUCCESSFULLY_MOVED,CANNOT_MOVE_OUT_OF_KNOWN_SPACE,INSUFFICIENT_POWER,HIT_ASTEROID,CANNOT_WARP_INTO_ASTEROID,CANNOT_WARP_TO_THE_SAME_POSITION,CANNOT_IMMEDIATELY_WARP_INTO_STARBASE,MOVE_UP,MOVE_DOWN,MOVE_FORWARD,MOVE_BACKWARD,WARP,YES,NO,GAME_WON,GAME_LOST,GAME_NOT_OVER | ? | movements,PathRoute,CollisionsNum,power,Position_Y,Position_X | ? | MoveUp,MoveDown,MoveBackward,MoveForward,EngageWarpDrive,MissionStatus,Current_Location,current_Power_Reserves,Asteroid_Collisions,Docked_At_Starbase,Game_Status,resetGame | ? | seen(Machine(Space)) | ? | SpaceShip);
  List_Of_HiddenCst_Ids(Machine(SpaceShip)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SpaceShip)) == (nMovePower,warpDPower,asteroidHitLoss,initialShipPower);
  List_Of_VisibleVar_Ids(Machine(SpaceShip)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SpaceShip)) == (?: ?);
  List_Of_Ids(Machine(Space)) == (spaceX,spaceY,space,asteroids,emptySpace,homeBase,starBase | ? | ? | ? | ? | ? | ? | ? | Space);
  List_Of_HiddenCst_Ids(Machine(Space)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Space)) == (spaceX,spaceY,space,asteroids,emptySpace,homeBase,starBase);
  List_Of_VisibleVar_Ids(Machine(Space)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Space)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(SpaceShip)) == (Type(REPORT) == Cst(SetOf(etype(REPORT,0,6)));Type(MOVEMENT) == Cst(SetOf(etype(MOVEMENT,0,4)));Type(DOCKED_STATUS) == Cst(SetOf(etype(DOCKED_STATUS,0,1)));Type(GAME_STATUS) == Cst(SetOf(etype(GAME_STATUS,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(SpaceShip)) == (Type(SUCCESSFULLY_MOVED) == Cst(etype(REPORT,0,6));Type(CANNOT_MOVE_OUT_OF_KNOWN_SPACE) == Cst(etype(REPORT,0,6));Type(INSUFFICIENT_POWER) == Cst(etype(REPORT,0,6));Type(HIT_ASTEROID) == Cst(etype(REPORT,0,6));Type(CANNOT_WARP_INTO_ASTEROID) == Cst(etype(REPORT,0,6));Type(CANNOT_WARP_TO_THE_SAME_POSITION) == Cst(etype(REPORT,0,6));Type(CANNOT_IMMEDIATELY_WARP_INTO_STARBASE) == Cst(etype(REPORT,0,6));Type(MOVE_UP) == Cst(etype(MOVEMENT,0,4));Type(MOVE_DOWN) == Cst(etype(MOVEMENT,0,4));Type(MOVE_FORWARD) == Cst(etype(MOVEMENT,0,4));Type(MOVE_BACKWARD) == Cst(etype(MOVEMENT,0,4));Type(WARP) == Cst(etype(MOVEMENT,0,4));Type(YES) == Cst(etype(DOCKED_STATUS,0,1));Type(NO) == Cst(etype(DOCKED_STATUS,0,1));Type(GAME_WON) == Cst(etype(GAME_STATUS,0,2));Type(GAME_LOST) == Cst(etype(GAME_STATUS,0,2));Type(GAME_NOT_OVER) == Cst(etype(GAME_STATUS,0,2));Type(nMovePower) == Cst(btype(INTEGER,?,?));Type(warpDPower) == Cst(btype(INTEGER,?,?));Type(asteroidHitLoss) == Cst(btype(INTEGER,?,?));Type(initialShipPower) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(SpaceShip)) == (Type(movements) == Mvl(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT,?,?)));Type(PathRoute) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(CollisionsNum) == Mvl(btype(INTEGER,?,?));Type(power) == Mvl(btype(INTEGER,?,?));Type(Position_Y) == Mvl(btype(INTEGER,?,?));Type(Position_X) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(SpaceShip)) == (Type(resetGame) == Cst(No_type,No_type);Type(Game_Status) == Cst(etype(GAME_STATUS,?,?),No_type);Type(Docked_At_Starbase) == Cst(etype(DOCKED_STATUS,?,?),No_type);Type(Asteroid_Collisions) == Cst(btype(INTEGER,?,?),No_type);Type(current_Power_Reserves) == Cst(btype(INTEGER,?,?),No_type);Type(Current_Location) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(EngageWarpDrive) == Cst(etype(REPORT,?,?)*etype(MOVEMENT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveForward) == Cst(etype(REPORT,?,?)*etype(MOVEMENT,?,?),No_type);Type(MoveBackward) == Cst(etype(REPORT,?,?)*etype(MOVEMENT,?,?),No_type);Type(MoveDown) == Cst(etype(REPORT,?,?)*etype(MOVEMENT,?,?),No_type);Type(MoveUp) == Cst(etype(REPORT,?,?)*etype(MOVEMENT,?,?),No_type));
  Observers(Machine(SpaceShip)) == (Type(Game_Status) == Cst(etype(GAME_STATUS,?,?),No_type);Type(Docked_At_Starbase) == Cst(etype(DOCKED_STATUS,?,?),No_type);Type(Asteroid_Collisions) == Cst(btype(INTEGER,?,?),No_type);Type(current_Power_Reserves) == Cst(btype(INTEGER,?,?),No_type);Type(Current_Location) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
