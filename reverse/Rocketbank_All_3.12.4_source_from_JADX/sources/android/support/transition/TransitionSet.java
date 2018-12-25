package android.support.transition;

import android.animation.TimeInterpolator;
import android.support.annotation.RestrictTo;
import android.support.transition.Transition.EpicenterCallback;
import android.support.transition.Transition.TransitionListener;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.io.DirectoryWalker;
import ru.rocketbank.core.widgets.RocketSnackbar.Callback;

public class TransitionSet extends Transition {
    private int mCurrentListeners;
    private boolean mPlayTogether = true;
    private boolean mStarted = false;
    private ArrayList<Transition> mTransitions = new ArrayList();

    static class TransitionSetListener extends TransitionListenerAdapter {
        TransitionSet mTransitionSet;

        TransitionSetListener(TransitionSet transitionSet) {
            this.mTransitionSet = transitionSet;
        }

        public final void onTransitionStart$30e4fb03() {
            if (!this.mTransitionSet.mStarted) {
                this.mTransitionSet.start();
                this.mTransitionSet.mStarted = true;
            }
        }

        public final void onTransitionEnd(Transition transition) {
            TransitionSet.access$106(this.mTransitionSet);
            if (this.mTransitionSet.mCurrentListeners == 0) {
                this.mTransitionSet.mStarted = false;
                this.mTransitionSet.end();
            }
            transition.removeListener(this);
        }
    }

    static /* synthetic */ int access$106(TransitionSet transitionSet) {
        int i = transitionSet.mCurrentListeners - 1;
        transitionSet.mCurrentListeners = i;
        return i;
    }

    public final TransitionSet setOrdering(int i) {
        switch (i) {
            case 0:
                this.mPlayTogether = true;
                break;
            case 1:
                this.mPlayTogether = false;
                break;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: ".concat(String.valueOf(i)));
        }
        return this;
    }

    public final TransitionSet addTransition(Transition transition) {
        this.mTransitions.add(transition);
        transition.mParent = this;
        if (this.mDuration >= 0) {
            transition.setDuration(this.mDuration);
        }
        return this;
    }

    public final int getTransitionCount() {
        return this.mTransitions.size();
    }

    public final Transition getTransitionAt(int i) {
        if (i >= 0) {
            if (i < this.mTransitions.size()) {
                return (Transition) this.mTransitions.get(i);
            }
        }
        return 0;
    }

    public final TransitionSet setDuration(long j) {
        super.setDuration(j);
        if (this.mDuration >= 0) {
            int size = this.mTransitions.size();
            for (int i = 0; i < size; i++) {
                ((Transition) this.mTransitions.get(i)).setDuration(j);
            }
        }
        return this;
    }

    public final TransitionSet setInterpolator(TimeInterpolator timeInterpolator) {
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    public Transition excludeTarget(View view, boolean z) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            ((Transition) this.mTransitions.get(i)).excludeTarget(view, z);
        }
        return super.excludeTarget(view, z);
    }

    public Transition excludeTarget(String str, boolean z) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            ((Transition) this.mTransitions.get(i)).excludeTarget(str, z);
        }
        return super.excludeTarget(str, z);
    }

    public Transition excludeTarget(int i, boolean z) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            ((Transition) this.mTransitions.get(i2)).excludeTarget(i, z);
        }
        return super.excludeTarget(i, z);
    }

    public Transition excludeTarget(Class cls, boolean z) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            ((Transition) this.mTransitions.get(i)).excludeTarget(cls, z);
        }
        return super.excludeTarget(cls, z);
    }

    public void setPathMotion$52a22057(DirectoryWalker directoryWalker) {
        super.setPathMotion$52a22057(directoryWalker);
        for (int i = 0; i < this.mTransitions.size(); i++) {
            ((Transition) this.mTransitions.get(i)).setPathMotion$52a22057(directoryWalker);
        }
    }

    @RestrictTo
    protected void createAnimators$130ee614(ViewGroup viewGroup, Scene scene, Scene scene2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.mTransitions.size();
        int i = 0;
        while (i < size) {
            Transition transition = (Transition) r0.mTransitions.get(i);
            if (startDelay > 0 && (r0.mPlayTogether || i == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay + startDelay2);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.createAnimators$130ee614(viewGroup, scene, scene2, arrayList, arrayList2);
            i++;
        }
    }

    @RestrictTo
    protected void runAnimators() {
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        TransitionListener transitionSetListener = new TransitionSetListener(this);
        Iterator it = this.mTransitions.iterator();
        while (it.hasNext()) {
            ((Transition) it.next()).addListener(transitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
        if (this.mPlayTogether) {
            Iterator it2 = this.mTransitions.iterator();
            while (it2.hasNext()) {
                ((Transition) it2.next()).runAnimators();
            }
            return;
        }
        for (int i = 1; i < this.mTransitions.size(); i++) {
            final Transition transition = (Transition) this.mTransitions.get(i);
            ((Transition) this.mTransitions.get(i - 1)).addListener(new TransitionListenerAdapter() {
                public final void onTransitionEnd(Transition transition) {
                    transition.runAnimators();
                    transition.removeListener(this);
                }
            });
        }
        Transition transition2 = (Transition) this.mTransitions.get(0);
        if (transition2 != null) {
            transition2.runAnimators();
        }
    }

    public void captureStartValues(TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            Iterator it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.isValidTarget(transitionValues.view)) {
                    transition.captureStartValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition);
                }
            }
        }
    }

    public void captureEndValues(TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            Iterator it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.isValidTarget(transitionValues.view)) {
                    transition.captureEndValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition);
                }
            }
        }
    }

    void capturePropagationValues(TransitionValues transitionValues) {
        super.capturePropagationValues(transitionValues);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).capturePropagationValues(transitionValues);
        }
    }

    @RestrictTo
    public void pause(View view) {
        super.pause(view);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).pause(view);
        }
    }

    @RestrictTo
    public void resume(View view) {
        super.resume(view);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).resume(view);
        }
    }

    @RestrictTo
    protected void cancel() {
        super.cancel();
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).cancel();
        }
    }

    @RestrictTo
    void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).forceToEnd(viewGroup);
        }
    }

    void setCanRemoveViews(boolean z) {
        super.setCanRemoveViews(z);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setCanRemoveViews(z);
        }
    }

    public void setPropagation$579df847(Callback callback) {
        super.setPropagation$579df847(callback);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setPropagation$579df847(callback);
        }
    }

    public void setEpicenterCallback(EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setEpicenterCallback(epicenterCallback);
        }
    }

    String toString(String str) {
        String transition = super.toString(str);
        for (int i = 0; i < this.mTransitions.size(); i++) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(transition);
            stringBuilder.append("\n");
            Transition transition2 = (Transition) this.mTransitions.get(i);
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(str);
            stringBuilder2.append("  ");
            stringBuilder.append(transition2.toString(stringBuilder2.toString()));
            transition = stringBuilder.toString();
        }
        return transition;
    }

    public Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.mTransitions = new ArrayList();
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            transitionSet.addTransition(((Transition) this.mTransitions.get(i)).clone());
        }
        return transitionSet;
    }

    /* bridge */ /* synthetic */ Transition setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setSceneRoot(viewGroup);
        }
        return this;
    }

    public /* bridge */ /* synthetic */ Transition removeListener(TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    public /* bridge */ /* synthetic */ Transition addListener(TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    public /* bridge */ /* synthetic */ Transition setStartDelay(long j) {
        return (TransitionSet) super.setStartDelay(j);
    }
}
