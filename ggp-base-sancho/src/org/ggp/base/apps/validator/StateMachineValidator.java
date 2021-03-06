
package org.ggp.base.apps.validator;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.ggp.base.util.game.GameRepository;
import org.ggp.base.util.game.LocalGameRepository;
import org.ggp.base.util.gdl.grammar.Gdl;
import org.ggp.base.util.logging.GamerLogger;
import org.ggp.base.util.statemachine.StateMachine;
import org.ggp.base.util.statemachine.implementation.propnet.forwardDeadReckon.ForwardDeadReckonPropnetStateMachine;
import org.ggp.base.util.statemachine.implementation.prover.ProverStateMachine;
import org.ggp.base.util.statemachine.verifier.StateMachineVerifier;


/**
 * @author Steve Draper
 */
public class StateMachineValidator
{
  public static void main(String args[])
  {
    Set<String> exceptedGames = new HashSet<>();

    // Set of games to omit from tests - e.g. - due to known GDL issues
    exceptedGames.add("merrills");
    exceptedGames.add("alexChess");
    exceptedGames.add("chess");
    exceptedGames.add("amazons");
    exceptedGames.add("amazonsTorus");
    exceptedGames.add("amazonsSuicide");
    exceptedGames.add("factoringImpossibleTurtleBrain");
    exceptedGames.add("knightwar");
    exceptedGames.add("laikLee_hex");
    exceptedGames.add("cylinder-checkers");
    exceptedGames.add("mummymaze1p");
    exceptedGames.add("pancakes88");
    exceptedGames.add("knightsTourLarge");
    exceptedGames.add("sudoku");
    exceptedGames.add("god");
    exceptedGames.add("slaughter");
    exceptedGames.add("skirmish");
    exceptedGames.add("cubicup_3player");
    exceptedGames.add("anon");
    //exceptedGames.add("simple3space");
    exceptedGames.add("modifiedTicTacToe2");
    exceptedGames.add("wallmaze");
    exceptedGames.add("slidingpieces");
    exceptedGames.add("ad_game_2x2");
    exceptedGames.add("gt_two_thirds_6p");
    exceptedGames.add("ticTacHeavenFC");//  Allows both players to noop at once which we don't currently handle

    String startGame = "ttcc4_2player"; // Game to begin with if desired
    boolean foundStartGame = false; // Set to true to just start at the beginning
    boolean stopOnError = true; // Whether to stop on first failing game or continue
    final int REPS_PER_GAME = 1;  //  Set to repeat each game multiple times

    Set<String> failureCases = new HashSet<>();

    // Usually we'll want the default repository but local can be useful
    //GameRepository theRepository = new LocalGameRepository();
    GameRepository theRepository = GameRepository.getDefaultRepository();
    try
    {
      for (String gameKey : theRepository.getGameKeys())
      {
        System.out.println("Precheck game " + gameKey + ".");
        if (gameKey.equals(startGame))
        {
          foundStartGame = true;
        }
        if (!foundStartGame)
          continue;
        if (exceptedGames.contains(gameKey))
          continue;

        boolean result = true;

        for(int i = 0; i < REPS_PER_GAME && result; i++)
        {
          StateMachine theReference = new ProverStateMachine();
          //  Instantiate the statemachine to be tested here as per the following commented out
          //  line in place of the basic prover
          //TestPropnetStateMachine theMachine = new TestPropnetStateMachine(new LearningComponentFactory());
          ForwardDeadReckonPropnetStateMachine theMachine = new ForwardDeadReckonPropnetStateMachine();
          //StateMachine theMachine = new ProverStateMachine(); // Replace this line with your state machine instantiation

          System.out.println("Checking consistency in game " + gameKey + ".");
          List<Gdl> description = theRepository.getGame(gameKey).getRules();
          theReference.initialize(description);

          result = false;

          try
          {
            theMachine.initialize(description);
            theMachine.enableGreedyRollouts(false, true);

            result = StateMachineVerifier.checkMachineConsistency(theReference,
                                                                  theMachine,
                                                                  10000);
          }
          catch (Exception e)
          {
            GamerLogger.logStackTrace("StateMachine", e);

            result = false;
          }
        }

        if (!result)
        {
          failureCases.add(gameKey);

          if (stopOnError)
            break;
        }
      }
    }
    finally
    {
      // The local repository suffers from a lack of releasing its port binding
      // under certain execution conditions (debug under Eclipse), so do it
      // explicitly to leave things in a clean state
      if (theRepository instanceof LocalGameRepository)
      {
        ((LocalGameRepository)theRepository).cleanUp();
      }
    }

    for (String failure : failureCases)
    {
      System.out.println("Failed in game " + failure);
    }
  }
}