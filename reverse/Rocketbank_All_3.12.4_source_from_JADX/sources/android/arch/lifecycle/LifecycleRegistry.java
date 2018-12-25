package android.arch.lifecycle;

import android.arch.core.internal.FastSafeIterableMap;
import android.arch.lifecycle.Lifecycle.Event;
import android.arch.lifecycle.Lifecycle.State;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;

public final class LifecycleRegistry extends Lifecycle {
    private int mAddingObserverCounter = 0;
    private boolean mHandlingEvent = false;
    private final WeakReference<LifecycleOwner> mLifecycleOwner;
    private boolean mNewEventOccurred = false;
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> mObserverMap = new FastSafeIterableMap();
    private ArrayList<State> mParentStates = new ArrayList();
    private State mState;

    static class ObserverWithState {
        GenericLifecycleObserver mLifecycleObserver;
        State mState;

        ObserverWithState(LifecycleObserver lifecycleObserver, State state) {
            this.mLifecycleObserver = Lifecycling.getCallback(lifecycleObserver);
            this.mState = state;
        }

        final void dispatchEvent(LifecycleOwner lifecycleOwner, Event event) {
            State stateAfter = LifecycleRegistry.getStateAfter(event);
            State state = this.mState;
            if (stateAfter != null && stateAfter.compareTo(state) < 0) {
                state = stateAfter;
            }
            this.mState = state;
            this.mLifecycleObserver.onStateChanged(lifecycleOwner, event);
            this.mState = stateAfter;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this.mLifecycleOwner = new WeakReference(lifecycleOwner);
        this.mState = State.INITIALIZED;
    }

    public final void markState(State state) {
        moveToState(state);
    }

    public final void handleLifecycleEvent(Event event) {
        moveToState(getStateAfter(event));
    }

    private void moveToState(State state) {
        if (this.mState != state) {
            this.mState = state;
            if (this.mHandlingEvent == null) {
                if (this.mAddingObserverCounter == null) {
                    this.mHandlingEvent = true;
                    sync();
                    this.mHandlingEvent = null;
                    return;
                }
            }
            this.mNewEventOccurred = true;
        }
    }

    private boolean isSynced() {
        if (this.mObserverMap.size() == 0) {
            return true;
        }
        State state = ((ObserverWithState) this.mObserverMap.eldest().getValue()).mState;
        State state2 = ((ObserverWithState) this.mObserverMap.newest().getValue()).mState;
        if (state == state2 && this.mState == state2) {
            return true;
        }
        return false;
    }

    private State calculateTargetState(LifecycleObserver lifecycleObserver) {
        lifecycleObserver = this.mObserverMap.ceil(lifecycleObserver);
        State state = null;
        lifecycleObserver = lifecycleObserver != null ? ((ObserverWithState) lifecycleObserver.getValue()).mState : null;
        if (!this.mParentStates.isEmpty()) {
            state = (State) this.mParentStates.get(this.mParentStates.size() - 1);
        }
        Enum enumR = this.mState;
        if (lifecycleObserver == null || lifecycleObserver.compareTo(enumR) >= 0) {
            lifecycleObserver = enumR;
        }
        return (state == null || state.compareTo(lifecycleObserver) >= 0) ? lifecycleObserver : state;
    }

    public final void addObserver(LifecycleObserver lifecycleObserver) {
        ObserverWithState observerWithState = new ObserverWithState(lifecycleObserver, this.mState == State.DESTROYED ? State.DESTROYED : State.INITIALIZED);
        if (((ObserverWithState) this.mObserverMap.putIfAbsent(lifecycleObserver, observerWithState)) == null) {
            LifecycleOwner lifecycleOwner = (LifecycleOwner) this.mLifecycleOwner.get();
            if (lifecycleOwner != null) {
                int i;
                Enum calculateTargetState;
                if (this.mAddingObserverCounter == 0) {
                    if (!this.mHandlingEvent) {
                        i = 0;
                        calculateTargetState = calculateTargetState(lifecycleObserver);
                        this.mAddingObserverCounter++;
                        while (observerWithState.mState.compareTo(calculateTargetState) < 0 && this.mObserverMap.contains(lifecycleObserver)) {
                            this.mParentStates.add(observerWithState.mState);
                            observerWithState.dispatchEvent(lifecycleOwner, upEvent(observerWithState.mState));
                            this.mParentStates.remove(this.mParentStates.size() - 1);
                            calculateTargetState = calculateTargetState(lifecycleObserver);
                        }
                        if (i == 0) {
                            sync();
                        }
                        this.mAddingObserverCounter -= 1;
                    }
                }
                i = 1;
                calculateTargetState = calculateTargetState(lifecycleObserver);
                this.mAddingObserverCounter++;
                while (observerWithState.mState.compareTo(calculateTargetState) < 0) {
                    this.mParentStates.add(observerWithState.mState);
                    observerWithState.dispatchEvent(lifecycleOwner, upEvent(observerWithState.mState));
                    this.mParentStates.remove(this.mParentStates.size() - 1);
                    calculateTargetState = calculateTargetState(lifecycleObserver);
                }
                if (i == 0) {
                    sync();
                }
                this.mAddingObserverCounter -= 1;
            }
        }
    }

    public final void removeObserver(LifecycleObserver lifecycleObserver) {
        this.mObserverMap.remove(lifecycleObserver);
    }

    public final State getCurrentState() {
        return this.mState;
    }

    static State getStateAfter(Event event) {
        switch (event) {
            case ON_CREATE:
            case ON_STOP:
                return State.CREATED;
            case ON_START:
            case ON_PAUSE:
                return State.STARTED;
            case ON_RESUME:
                return State.RESUMED;
            case ON_DESTROY:
                return State.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value ".concat(String.valueOf(event)));
        }
    }

    private static Event upEvent(State state) {
        switch (state) {
            case INITIALIZED:
            case DESTROYED:
                return Event.ON_CREATE;
            case CREATED:
                return Event.ON_START;
            case STARTED:
                return Event.ON_RESUME;
            case RESUMED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value ".concat(String.valueOf(state)));
        }
    }

    private void forwardPass(LifecycleOwner lifecycleOwner) {
        Iterator iteratorWithAdditions = this.mObserverMap.iteratorWithAdditions();
        while (iteratorWithAdditions.hasNext() && !this.mNewEventOccurred) {
            Entry entry = (Entry) iteratorWithAdditions.next();
            ObserverWithState observerWithState = (ObserverWithState) entry.getValue();
            while (observerWithState.mState.compareTo(this.mState) < 0 && !this.mNewEventOccurred && this.mObserverMap.contains(entry.getKey())) {
                this.mParentStates.add(observerWithState.mState);
                observerWithState.dispatchEvent(lifecycleOwner, upEvent(observerWithState.mState));
                this.mParentStates.remove(this.mParentStates.size() - 1);
            }
        }
    }

    private void backwardPass(LifecycleOwner lifecycleOwner) {
        Iterator descendingIterator = this.mObserverMap.descendingIterator();
        while (descendingIterator.hasNext() && !this.mNewEventOccurred) {
            Entry entry = (Entry) descendingIterator.next();
            ObserverWithState observerWithState = (ObserverWithState) entry.getValue();
            while (observerWithState.mState.compareTo(this.mState) > 0 && !this.mNewEventOccurred && this.mObserverMap.contains(entry.getKey())) {
                Event event;
                State state = observerWithState.mState;
                switch (state) {
                    case INITIALIZED:
                        throw new IllegalArgumentException();
                    case CREATED:
                        event = Event.ON_DESTROY;
                        break;
                    case STARTED:
                        event = Event.ON_STOP;
                        break;
                    case RESUMED:
                        event = Event.ON_PAUSE;
                        break;
                    case DESTROYED:
                        throw new IllegalArgumentException();
                    default:
                        throw new IllegalArgumentException("Unexpected state value ".concat(String.valueOf(state)));
                }
                this.mParentStates.add(getStateAfter(event));
                observerWithState.dispatchEvent(lifecycleOwner, event);
                this.mParentStates.remove(this.mParentStates.size() - 1);
            }
        }
    }

    private void sync() {
        LifecycleOwner lifecycleOwner = (LifecycleOwner) this.mLifecycleOwner.get();
        if (lifecycleOwner == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (!isSynced()) {
            this.mNewEventOccurred = false;
            if (this.mState.compareTo(((ObserverWithState) this.mObserverMap.eldest().getValue()).mState) < 0) {
                backwardPass(lifecycleOwner);
            }
            Entry newest = this.mObserverMap.newest();
            if (!(this.mNewEventOccurred || newest == null || this.mState.compareTo(((ObserverWithState) newest.getValue()).mState) <= 0)) {
                forwardPass(lifecycleOwner);
            }
        }
        this.mNewEventOccurred = false;
    }
}
