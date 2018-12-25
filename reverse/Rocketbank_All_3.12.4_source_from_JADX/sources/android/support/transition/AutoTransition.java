package android.support.transition;

public final class AutoTransition extends TransitionSet {
    public AutoTransition() {
        setOrdering(1);
        addTransition(new Fade(2)).addTransition(new ChangeBounds()).addTransition(new Fade(1));
    }
}
