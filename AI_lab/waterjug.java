import java.util.*;

class WaterJugSolver {
    private int jug1Capacity;
    private int jug2Capacity;
    private int targetAmount;

    public WaterJugSolver(int jug1Capacity, int jug2Capacity, int targetAmount) {
        this.jug1Capacity = jug1Capacity;
        this.jug2Capacity = jug2Capacity;
        this.targetAmount = targetAmount;
    }

    public void solve() {
        Queue<State> queue = new LinkedList<>();
        Set<State> visited = new HashSet<>();

        State initialState = new State(0, 0);
        queue.add(initialState);
        visited.add(initialState);

        while (!queue.isEmpty()) {
            State currentState = queue.poll();

            if (currentState.jug1Amount == targetAmount || currentState.jug2Amount == targetAmount) {
                System.out.println("Solution found!");
                System.out.println(currentState);
                return;
            }

            List<State> nextStates = generateNextStates(currentState);

            for (State nextState : nextStates) {
                if (!visited.contains(nextState)) {
                    queue.add(nextState);
                    visited.add(nextState);
                }
            }
        }

        System.out.println("No solution found!");
    }

    private List<State> generateNextStates(State currentState) {
        List<State> nextStates = new ArrayList<>();

        // Fill jug 1
        nextStates.add(new State(jug1Capacity, currentState.jug2Amount));

        // Fill jug 2
        nextStates.add(new State(currentState.jug1Amount, jug2Capacity));

        // Empty jug 1
        nextStates.add(new State(0, currentState.jug2Amount));

        // Empty jug 2
        nextStates.add(new State(currentState.jug1Amount, 0));

        // Pour from jug 1 to jug 2
        int amountToPour = Math.min(currentState.jug1Amount, jug2Capacity - currentState.jug2Amount);
        nextStates.add(new State(currentState.jug1Amount - amountToPour, currentState.jug2Amount + amountToPour));

        // Pour from jug 2 to jug 1
        amountToPour = Math.min(currentState.jug2Amount, jug1Capacity - currentState.jug1Amount);
        nextStates.add(new State(currentState.jug1Amount + amountToPour, currentState.jug2Amount - amountToPour));

        return nextStates;
    }

    private static class State {
        private int jug1Amount;
        private int jug2Amount;

        public State(int jug1Amount, int jug2Amount) {
            this.jug1Amount = jug1Amount;
            this.jug2Amount = jug2Amount;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            State other = (State) obj;
            return jug1Amount == other.jug1Amount && jug2Amount == other.jug2Amount;
        }

        @Override
        public int hashCode() {
            return Objects.hash(jug1Amount, jug2Amount);
        }

        @Override
        public String toString() {
            return "Jug 1: " + jug1Amount + " units, Jug 2: " + jug2Amount + " units";
        }
    }
}

public class Main {
    public static void main(String[] args) {
        WaterJugSolver solver = new WaterJugSolver(5, 3, 4);
        solver.solve();
    }
}
