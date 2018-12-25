package com.nineoldandroids.animation;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v7.cardview.C0943R;
import android.support.v7.cardview.C0943R.attr;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;

public class ValueAnimator extends Animator {
    private static ThreadLocal<AnimationHandler> sAnimationHandler = new ThreadLocal();
    private static final ThreadLocal<ArrayList<ValueAnimator>> sAnimations = new C06661();
    private static final Interpolator sDefaultInterpolator = new AccelerateDecelerateInterpolator();
    private static final ThreadLocal<ArrayList<ValueAnimator>> sDelayedAnims = new C06683();
    private static final ThreadLocal<ArrayList<ValueAnimator>> sEndingAnims = new C06694();
    private static final TypeEvaluator sFloatEvaluator = new C0943R();
    private static long sFrameDelay = 10;
    private static final TypeEvaluator sIntEvaluator = new attr();
    private static final ThreadLocal<ArrayList<ValueAnimator>> sPendingAnimations = new C06672();
    private static final ThreadLocal<ArrayList<ValueAnimator>> sReadyAnims = new C06705();
    private float mCurrentFraction = BitmapDescriptorFactory.HUE_RED;
    private int mCurrentIteration = 0;
    private long mDelayStartTime;
    private long mDuration = 300;
    boolean mInitialized = false;
    private Interpolator mInterpolator = sDefaultInterpolator;
    private boolean mPlayingBackwards = false;
    int mPlayingState = 0;
    private int mRepeatCount = 0;
    private int mRepeatMode = 1;
    private boolean mRunning = false;
    long mSeekTime = -1;
    private long mStartDelay = 0;
    long mStartTime;
    private boolean mStarted = false;
    private boolean mStartedDelay = false;
    private ArrayList<AnimatorUpdateListener> mUpdateListeners = null;
    PropertyValuesHolder[] mValues;
    HashMap<String, PropertyValuesHolder> mValuesMap;

    /* renamed from: com.nineoldandroids.animation.ValueAnimator$1 */
    static class C06661 extends ThreadLocal<ArrayList<ValueAnimator>> {
        C06661() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new ArrayList();
        }
    }

    /* renamed from: com.nineoldandroids.animation.ValueAnimator$2 */
    static class C06672 extends ThreadLocal<ArrayList<ValueAnimator>> {
        C06672() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new ArrayList();
        }
    }

    /* renamed from: com.nineoldandroids.animation.ValueAnimator$3 */
    static class C06683 extends ThreadLocal<ArrayList<ValueAnimator>> {
        C06683() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new ArrayList();
        }
    }

    /* renamed from: com.nineoldandroids.animation.ValueAnimator$4 */
    static class C06694 extends ThreadLocal<ArrayList<ValueAnimator>> {
        C06694() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new ArrayList();
        }
    }

    /* renamed from: com.nineoldandroids.animation.ValueAnimator$5 */
    static class C06705 extends ThreadLocal<ArrayList<ValueAnimator>> {
        C06705() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new ArrayList();
        }
    }

    static class AnimationHandler extends Handler {
        private AnimationHandler() {
        }

        public final void handleMessage(Message message) {
            ArrayList arrayList;
            int i;
            int i2;
            ArrayList arrayList2 = (ArrayList) ValueAnimator.sAnimations.get();
            ArrayList arrayList3 = (ArrayList) ValueAnimator.sDelayedAnims.get();
            int i3 = 0;
            switch (message.what) {
                case null:
                    ArrayList arrayList4;
                    int size;
                    int i4;
                    ValueAnimator valueAnimator;
                    arrayList = (ArrayList) ValueAnimator.sPendingAnimations.get();
                    if (arrayList2.size() <= 0) {
                        if (arrayList3.size() <= 0) {
                            i = 1;
                            while (arrayList.size() > 0) {
                                arrayList4 = (ArrayList) arrayList.clone();
                                arrayList.clear();
                                size = arrayList4.size();
                                for (i4 = 0; i4 < size; i4++) {
                                    valueAnimator = (ValueAnimator) arrayList4.get(i4);
                                    if (0 != 0) {
                                        ValueAnimator.access$400(valueAnimator);
                                    } else {
                                        arrayList3.add(valueAnimator);
                                    }
                                }
                            }
                            break;
                        }
                    }
                    i = 0;
                    while (arrayList.size() > 0) {
                        arrayList4 = (ArrayList) arrayList.clone();
                        arrayList.clear();
                        size = arrayList4.size();
                        for (i4 = 0; i4 < size; i4++) {
                            valueAnimator = (ValueAnimator) arrayList4.get(i4);
                            if (0 != 0) {
                                arrayList3.add(valueAnimator);
                            } else {
                                ValueAnimator.access$400(valueAnimator);
                            }
                        }
                    }
                case 1:
                    i = 1;
                    break;
                default:
                    return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            arrayList = (ArrayList) ValueAnimator.sReadyAnims.get();
            ArrayList arrayList5 = (ArrayList) ValueAnimator.sEndingAnims.get();
            int size2 = arrayList3.size();
            for (i2 = 0; i2 < size2; i2++) {
                ValueAnimator valueAnimator2 = (ValueAnimator) arrayList3.get(i2);
                if (ValueAnimator.access$700(valueAnimator2, currentAnimationTimeMillis)) {
                    arrayList.add(valueAnimator2);
                }
            }
            size2 = arrayList.size();
            if (size2 > 0) {
                for (i2 = 0; i2 < size2; i2++) {
                    valueAnimator2 = (ValueAnimator) arrayList.get(i2);
                    ValueAnimator.access$400(valueAnimator2);
                    valueAnimator2.mRunning = true;
                    arrayList3.remove(valueAnimator2);
                }
                arrayList.clear();
            }
            size2 = arrayList2.size();
            message = null;
            while (message < size2) {
                ValueAnimator valueAnimator3 = (ValueAnimator) arrayList2.get(message);
                if (valueAnimator3.animationFrame(currentAnimationTimeMillis)) {
                    arrayList5.add(valueAnimator3);
                }
                if (arrayList2.size() == size2) {
                    message++;
                } else {
                    size2--;
                    arrayList5.remove(valueAnimator3);
                }
            }
            if (arrayList5.size() > null) {
                while (i3 < arrayList5.size()) {
                    ValueAnimator.access$900((ValueAnimator) arrayList5.get(i3));
                    i3++;
                }
                arrayList5.clear();
            }
            if (i == 0) {
                return;
            }
            if (arrayList2.isEmpty() == null || arrayList3.isEmpty() == null) {
                sendEmptyMessageDelayed(1, Math.max(0, ValueAnimator.sFrameDelay - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
            }
        }
    }

    public interface AnimatorUpdateListener<T> {
        boolean encode(T t, OutputStream outputStream);

        String getId();
    }

    public static ValueAnimator ofFloat(float... fArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setFloatValues(fArr);
        return valueAnimator;
    }

    public void setIntValues(int... iArr) {
        if (iArr != null) {
            if (iArr.length != 0) {
                if (this.mValues != null) {
                    if (this.mValues.length != 0) {
                        this.mValues[0].setIntValues(iArr);
                        this.mInitialized = false;
                    }
                }
                setValues(PropertyValuesHolder.ofInt("", iArr));
                this.mInitialized = false;
            }
        }
    }

    public void setFloatValues(float... fArr) {
        if (fArr != null) {
            if (fArr.length != 0) {
                if (this.mValues != null) {
                    if (this.mValues.length != 0) {
                        this.mValues[0].setFloatValues(fArr);
                        this.mInitialized = false;
                    }
                }
                setValues(PropertyValuesHolder.ofFloat("", fArr));
                this.mInitialized = false;
            }
        }
    }

    public final void setValues(PropertyValuesHolder... propertyValuesHolderArr) {
        this.mValues = propertyValuesHolderArr;
        this.mValuesMap = new HashMap(1);
        for (int i = 0; i <= 0; i++) {
            PropertyValuesHolder propertyValuesHolder = propertyValuesHolderArr[0];
            this.mValuesMap.put(propertyValuesHolder.mPropertyName, propertyValuesHolder);
        }
        this.mInitialized = false;
    }

    void initAnimation() {
        if (!this.mInitialized) {
            for (PropertyValuesHolder init : this.mValues) {
                init.init();
            }
            this.mInitialized = true;
        }
    }

    private void setCurrentPlayTime(long j) {
        initAnimation();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.mPlayingState != 1) {
            this.mSeekTime = j;
            this.mPlayingState = 2;
        }
        this.mStartTime = currentAnimationTimeMillis - j;
        animationFrame(currentAnimationTimeMillis);
    }

    public final void addUpdateListener$71cd81c5() {
        if (this.mUpdateListeners == null) {
            this.mUpdateListeners = new ArrayList();
        }
        this.mUpdateListeners.add(null);
    }

    public final void setEvaluator(TypeEvaluator typeEvaluator) {
        if (this.mValues != null && this.mValues.length > 0) {
            this.mValues[0].setEvaluator(typeEvaluator);
        }
    }

    final boolean animationFrame(long j) {
        if (this.mPlayingState == 0) {
            this.mPlayingState = 1;
            if (this.mSeekTime < 0) {
                this.mStartTime = j;
            } else {
                this.mStartTime = j - this.mSeekTime;
                this.mSeekTime = -1;
            }
        }
        boolean z = false;
        switch (this.mPlayingState) {
            case 1:
            case 2:
                j = this.mDuration > 0 ? ((float) (j - this.mStartTime)) / ((float) this.mDuration) : 1065353216;
                if (j >= 1065353216) {
                    if (this.mCurrentIteration < 0) {
                        if (this.mListeners != null) {
                            int size = this.mListeners.size();
                            for (int i = 0; i < size; i++) {
                                this.mListeners.get(i);
                            }
                        }
                        if (this.mRepeatMode == 2) {
                            this.mPlayingBackwards ^= true;
                        }
                        this.mCurrentIteration += (int) j;
                        j %= 1065353216;
                        this.mStartTime += this.mDuration;
                    } else {
                        j = Math.min(j, 1.0f);
                        z = true;
                    }
                }
                if (this.mPlayingBackwards) {
                    j = 1065353216 - j;
                }
                animateValue(j);
                break;
            default:
                break;
        }
        return z;
    }

    void animateValue(float f) {
        f = this.mInterpolator.getInterpolation(f);
        this.mCurrentFraction = f;
        int i = 0;
        for (PropertyValuesHolder calculateValue : this.mValues) {
            calculateValue.calculateValue(f);
        }
        if (this.mUpdateListeners != null) {
            int size = this.mUpdateListeners.size();
            while (i < size) {
                this.mUpdateListeners.get(i);
                i++;
            }
        }
    }

    public ValueAnimator clone() {
        int size;
        ValueAnimator valueAnimator = (ValueAnimator) super.clone();
        int i = 0;
        if (this.mUpdateListeners != null) {
            ArrayList arrayList = this.mUpdateListeners;
            valueAnimator.mUpdateListeners = new ArrayList();
            size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                valueAnimator.mUpdateListeners.add(arrayList.get(i2));
            }
        }
        valueAnimator.mSeekTime = -1;
        valueAnimator.mPlayingBackwards = false;
        valueAnimator.mCurrentIteration = 0;
        valueAnimator.mInitialized = false;
        valueAnimator.mPlayingState = 0;
        valueAnimator.mStartedDelay = false;
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null) {
            size = propertyValuesHolderArr.length;
            valueAnimator.mValues = new PropertyValuesHolder[size];
            valueAnimator.mValuesMap = new HashMap(size);
            while (i < size) {
                PropertyValuesHolder clone = propertyValuesHolderArr[i].clone();
                valueAnimator.mValues[i] = clone;
                valueAnimator.mValuesMap.put(clone.mPropertyName, clone);
                i++;
            }
        }
        return valueAnimator;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ValueAnimator@");
        stringBuilder.append(Integer.toHexString(hashCode()));
        String stringBuilder2 = stringBuilder.toString();
        if (this.mValues != null) {
            for (PropertyValuesHolder propertyValuesHolder : this.mValues) {
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append(stringBuilder2);
                stringBuilder3.append("\n    ");
                stringBuilder3.append(propertyValuesHolder.toString());
                stringBuilder2 = stringBuilder3.toString();
            }
        }
        return stringBuilder2;
    }

    public void start() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        long currentAnimationTimeMillis;
        ArrayList arrayList;
        int size;
        int i;
        AnimationHandler animationHandler;
        this.mPlayingBackwards = false;
        this.mCurrentIteration = 0;
        this.mPlayingState = 0;
        this.mStarted = true;
        this.mStartedDelay = false;
        ((ArrayList) sPendingAnimations.get()).add(this);
        if (this.mInitialized) {
            if (this.mPlayingState != 0) {
                currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
                setCurrentPlayTime(currentAnimationTimeMillis);
                this.mPlayingState = 0;
                this.mRunning = true;
                if (this.mListeners != null) {
                    arrayList = (ArrayList) this.mListeners.clone();
                    size = arrayList.size();
                    for (i = 0; i < size; i++) {
                        arrayList.get(i);
                    }
                }
                animationHandler = (AnimationHandler) sAnimationHandler.get();
                if (animationHandler == null) {
                    animationHandler = new AnimationHandler();
                    sAnimationHandler.set(animationHandler);
                }
                animationHandler.sendEmptyMessage(0);
            }
        }
        currentAnimationTimeMillis = 0;
        setCurrentPlayTime(currentAnimationTimeMillis);
        this.mPlayingState = 0;
        this.mRunning = true;
        if (this.mListeners != null) {
            arrayList = (ArrayList) this.mListeners.clone();
            size = arrayList.size();
            for (i = 0; i < size; i++) {
                arrayList.get(i);
            }
        }
        animationHandler = (AnimationHandler) sAnimationHandler.get();
        if (animationHandler == null) {
            animationHandler = new AnimationHandler();
            sAnimationHandler.set(animationHandler);
        }
        animationHandler.sendEmptyMessage(0);
    }

    static /* synthetic */ void access$400(ValueAnimator valueAnimator) {
        valueAnimator.initAnimation();
        ((ArrayList) sAnimations.get()).add(valueAnimator);
    }

    static /* synthetic */ boolean access$700(ValueAnimator valueAnimator, long j) {
        if (valueAnimator.mStartedDelay) {
            long j2 = j - valueAnimator.mDelayStartTime;
            if (j2 > 0) {
                valueAnimator.mStartTime = j - j2;
                valueAnimator.mPlayingState = 1;
                return true;
            }
        }
        valueAnimator.mStartedDelay = true;
        valueAnimator.mDelayStartTime = j;
        return null;
    }

    static /* synthetic */ void access$900(ValueAnimator valueAnimator) {
        ((ArrayList) sAnimations.get()).remove(valueAnimator);
        ((ArrayList) sPendingAnimations.get()).remove(valueAnimator);
        ((ArrayList) sDelayedAnims.get()).remove(valueAnimator);
        valueAnimator.mPlayingState = 0;
        if (valueAnimator.mRunning && valueAnimator.mListeners != null) {
            ArrayList arrayList = (ArrayList) valueAnimator.mListeners.clone();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList.get(i);
            }
        }
        valueAnimator.mRunning = false;
        valueAnimator.mStarted = false;
    }
}
