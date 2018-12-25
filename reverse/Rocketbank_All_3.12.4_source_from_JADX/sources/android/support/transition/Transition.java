package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.io.DirectoryWalker;
import ru.rocketbank.core.widgets.RocketSnackbar.Callback;

public abstract class Transition implements Cloneable {
    static final boolean DBG = false;
    private static final int[] DEFAULT_MATCH_ORDER = new int[]{2, 1, 3, 4};
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private static final DirectoryWalker STRAIGHT_PATH_MOTION$670c4d4e = new C09141();
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> sRunningAnimators = new ThreadLocal();
    private ArrayList<Animator> mAnimators;
    boolean mCanRemoveViews;
    private ArrayList<Animator> mCurrentAnimators;
    long mDuration;
    private Scene mEndValues$5e6ef4bf;
    private ArrayList<TransitionValues> mEndValuesList;
    private boolean mEnded;
    private EpicenterCallback mEpicenterCallback;
    private TimeInterpolator mInterpolator;
    private ArrayList<TransitionListener> mListeners;
    private int[] mMatchOrder;
    private String mName;
    private ArrayMap<String, String> mNameOverrides;
    private int mNumInstances;
    TransitionSet mParent;
    private DirectoryWalker mPathMotion$670c4d4e;
    private boolean mPaused;
    Callback mPropagation$24d5c352;
    private ViewGroup mSceneRoot;
    private long mStartDelay;
    private Scene mStartValues$5e6ef4bf;
    private ArrayList<TransitionValues> mStartValuesList;
    private ArrayList<View> mTargetChildExcludes;
    private ArrayList<View> mTargetExcludes;
    private ArrayList<Integer> mTargetIdChildExcludes;
    private ArrayList<Integer> mTargetIdExcludes;
    ArrayList<Integer> mTargetIds;
    private ArrayList<String> mTargetNameExcludes;
    private ArrayList<String> mTargetNames;
    private ArrayList<Class> mTargetTypeChildExcludes;
    private ArrayList<Class> mTargetTypeExcludes;
    private ArrayList<Class> mTargetTypes;
    ArrayList<View> mTargets;

    /* renamed from: android.support.transition.Transition$3 */
    class C00853 extends AnimatorListenerAdapter {
        C00853() {
        }

        public final void onAnimationEnd(Animator animator) {
            Transition.this.end();
            animator.removeListener(this);
        }
    }

    static class AnimationInfo {
        String mName;
        Transition mTransition;
        TransitionValues mValues;
        View mView;
        WindowIdImpl mWindowId;

        AnimationInfo(View view, String str, Transition transition, WindowIdImpl windowIdImpl, TransitionValues transitionValues) {
            this.mView = view;
            this.mName = str;
            this.mValues = transitionValues;
            this.mWindowId = windowIdImpl;
            this.mTransition = transition;
        }
    }

    public static abstract class EpicenterCallback {
        public abstract Rect onGetEpicenter$3bbcb57a();
    }

    public interface TransitionListener {
        void onTransitionCancel$30e4fb03();

        void onTransitionEnd(Transition transition);

        void onTransitionPause$30e4fb03();

        void onTransitionResume$30e4fb03();

        void onTransitionStart$30e4fb03();
    }

    /* renamed from: android.support.transition.Transition$1 */
    static class C09141 extends DirectoryWalker {
        C09141() {
        }

        public final Path getPath(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    private static boolean isValidMatch(int i) {
        return i > 0 && i <= 4;
    }

    public abstract void captureEndValues(TransitionValues transitionValues);

    public abstract void captureStartValues(TransitionValues transitionValues);

    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public Transition() {
        this.mName = getClass().getName();
        this.mStartDelay = -1;
        this.mDuration = -1;
        this.mInterpolator = null;
        this.mTargetIds = new ArrayList();
        this.mTargets = new ArrayList();
        this.mTargetNames = null;
        this.mTargetTypes = null;
        this.mTargetIdExcludes = null;
        this.mTargetExcludes = null;
        this.mTargetTypeExcludes = null;
        this.mTargetNameExcludes = null;
        this.mTargetIdChildExcludes = null;
        this.mTargetChildExcludes = null;
        this.mTargetTypeChildExcludes = null;
        this.mStartValues$5e6ef4bf = new Scene();
        this.mEndValues$5e6ef4bf = new Scene();
        this.mParent = null;
        this.mMatchOrder = DEFAULT_MATCH_ORDER;
        this.mSceneRoot = null;
        this.mCanRemoveViews = false;
        this.mCurrentAnimators = new ArrayList();
        this.mNumInstances = 0;
        this.mPaused = false;
        this.mEnded = false;
        this.mListeners = null;
        this.mAnimators = new ArrayList();
        this.mPathMotion$670c4d4e = STRAIGHT_PATH_MOTION$670c4d4e;
    }

    public Transition(Context context, AttributeSet attributeSet) {
        this.mName = getClass().getName();
        this.mStartDelay = -1;
        this.mDuration = -1;
        String str = null;
        this.mInterpolator = null;
        this.mTargetIds = new ArrayList();
        this.mTargets = new ArrayList();
        this.mTargetNames = null;
        this.mTargetTypes = null;
        this.mTargetIdExcludes = null;
        this.mTargetExcludes = null;
        this.mTargetTypeExcludes = null;
        this.mTargetNameExcludes = null;
        this.mTargetIdChildExcludes = null;
        this.mTargetChildExcludes = null;
        this.mTargetTypeChildExcludes = null;
        this.mStartValues$5e6ef4bf = new Scene();
        this.mEndValues$5e6ef4bf = new Scene();
        this.mParent = null;
        this.mMatchOrder = DEFAULT_MATCH_ORDER;
        this.mSceneRoot = null;
        boolean z = false;
        this.mCanRemoveViews = false;
        this.mCurrentAnimators = new ArrayList();
        this.mNumInstances = 0;
        this.mPaused = false;
        this.mEnded = false;
        this.mListeners = null;
        this.mAnimators = new ArrayList();
        this.mPathMotion$670c4d4e = STRAIGHT_PATH_MOTION$670c4d4e;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        int i = -1;
        long j = (long) ((xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "duration") != null ? 1 : false) == 0 ? -1 : obtainStyledAttributes.getInt(1, -1));
        if (j >= 0) {
            setDuration(j);
        }
        if ((xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "startDelay") != null ? 1 : false) != 0) {
            i = obtainStyledAttributes.getInt(2, -1);
        }
        long j2 = (long) i;
        if (j2 > 0) {
            setStartDelay(j2);
        }
        int resourceId = (xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? 1 : false) == 0 ? 0 : obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        if (xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "matchOrder") != null) {
            z = true;
        }
        if (z) {
            str = obtainStyledAttributes.getString(3);
        }
        if (str != null) {
            setMatchOrder(parseMatchOrder(str));
        }
        obtainStyledAttributes.recycle();
    }

    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        str = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                str[i] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(trim)) {
                str[i] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
                str[i] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(trim)) {
                str[i] = 4;
            } else if (trim.isEmpty()) {
                trim = new int[(str.length - 1)];
                System.arraycopy(str, 0, trim, 0, i);
                i--;
                str = trim;
            } else {
                StringBuilder stringBuilder = new StringBuilder("Unknown match type in matchOrder: '");
                stringBuilder.append(trim);
                stringBuilder.append("'");
                throw new InflateException(stringBuilder.toString());
            }
            i++;
        }
        return str;
    }

    public Transition setDuration(long j) {
        this.mDuration = j;
        return this;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Transition setStartDelay(long j) {
        this.mStartDelay = j;
        return this;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public Transition setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr != null) {
            if (iArr.length != 0) {
                int i = 0;
                while (i < iArr.length) {
                    if (!isValidMatch(iArr[i])) {
                        throw new IllegalArgumentException("matches contains invalid value");
                    } else if (alreadyContains(iArr, i)) {
                        throw new IllegalArgumentException("matches contains a duplicate value");
                    } else {
                        i++;
                    }
                }
                this.mMatchOrder = (int[]) iArr.clone();
                return;
            }
        }
        this.mMatchOrder = DEFAULT_MATCH_ORDER;
    }

    private static boolean alreadyContains(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return 1;
            }
        }
        return false;
    }

    private void matchInstances(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View view = (View) arrayMap.keyAt(size);
            if (view != null && isValidTarget(view)) {
                TransitionValues transitionValues = (TransitionValues) arrayMap2.remove(view);
                if (!(transitionValues == null || transitionValues.view == null || !isValidTarget(transitionValues.view))) {
                    this.mStartValuesList.add((TransitionValues) arrayMap.removeAt(size));
                    this.mEndValuesList.add(transitionValues);
                }
            }
        }
    }

    private void matchItemIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            View view = (View) longSparseArray.valueAt(i);
            if (view != null && isValidTarget(view)) {
                View view2 = (View) longSparseArray2.get(longSparseArray.keyAt(i));
                if (view2 != null && isValidTarget(view2)) {
                    TransitionValues transitionValues = (TransitionValues) arrayMap.get(view);
                    TransitionValues transitionValues2 = (TransitionValues) arrayMap2.get(view2);
                    if (!(transitionValues == null || transitionValues2 == null)) {
                        this.mStartValuesList.add(transitionValues);
                        this.mEndValuesList.add(transitionValues2);
                        arrayMap.remove(view);
                        arrayMap2.remove(view2);
                    }
                }
            }
        }
    }

    private void matchIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View view = (View) sparseArray.valueAt(i);
            if (view != null && isValidTarget(view)) {
                View view2 = (View) sparseArray2.get(sparseArray.keyAt(i));
                if (view2 != null && isValidTarget(view2)) {
                    TransitionValues transitionValues = (TransitionValues) arrayMap.get(view);
                    TransitionValues transitionValues2 = (TransitionValues) arrayMap2.get(view2);
                    if (!(transitionValues == null || transitionValues2 == null)) {
                        this.mStartValuesList.add(transitionValues);
                        this.mEndValuesList.add(transitionValues2);
                        arrayMap.remove(view);
                        arrayMap2.remove(view2);
                    }
                }
            }
        }
    }

    private void matchNames(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        int size = arrayMap3.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayMap3.valueAt(i);
            if (view != null && isValidTarget(view)) {
                View view2 = (View) arrayMap4.get(arrayMap3.keyAt(i));
                if (view2 != null && isValidTarget(view2)) {
                    TransitionValues transitionValues = (TransitionValues) arrayMap.get(view);
                    TransitionValues transitionValues2 = (TransitionValues) arrayMap2.get(view2);
                    if (!(transitionValues == null || transitionValues2 == null)) {
                        this.mStartValuesList.add(transitionValues);
                        this.mEndValuesList.add(transitionValues2);
                        arrayMap.remove(view);
                        arrayMap2.remove(view2);
                    }
                }
            }
        }
    }

    private void addUnmatched(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        int i = 0;
        for (int i2 = 0; i2 < arrayMap.size(); i2++) {
            TransitionValues transitionValues = (TransitionValues) arrayMap.valueAt(i2);
            if (isValidTarget(transitionValues.view)) {
                this.mStartValuesList.add(transitionValues);
                this.mEndValuesList.add(null);
            }
        }
        while (i < arrayMap2.size()) {
            TransitionValues transitionValues2 = (TransitionValues) arrayMap2.valueAt(i);
            if (isValidTarget(transitionValues2.view)) {
                this.mEndValuesList.add(transitionValues2);
                this.mStartValuesList.add(null);
            }
            i++;
        }
    }

    private void matchStartAndEnd$46d84b55(Scene scene, Scene scene2) {
        ArrayMap arrayMap = new ArrayMap(scene.mViewValues);
        ArrayMap arrayMap2 = new ArrayMap(scene2.mViewValues);
        for (int i : this.mMatchOrder) {
            switch (i) {
                case 1:
                    matchInstances(arrayMap, arrayMap2);
                    break;
                case 2:
                    matchNames(arrayMap, arrayMap2, scene.mNameValues, scene2.mNameValues);
                    break;
                case 3:
                    matchIds(arrayMap, arrayMap2, scene.mIdValues, scene2.mIdValues);
                    break;
                case 4:
                    matchItemIds(arrayMap, arrayMap2, scene.mItemIdValues, scene2.mItemIdValues);
                    break;
                default:
                    break;
            }
        }
        addUnmatched(arrayMap, arrayMap2);
    }

    @RestrictTo
    protected void createAnimators$130ee614(ViewGroup viewGroup, Scene scene, Scene scene2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        Transition transition = this;
        ArrayMap runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long j = Long.MAX_VALUE;
        int i = 0;
        while (i < size) {
            ViewGroup viewGroup2;
            int i2;
            Object obj;
            Animator createAnimator;
            View view;
            TransitionValues transitionValues;
            Animator animator;
            TransitionValues transitionValues2;
            Object obj2;
            TransitionValues transitionValues3 = (TransitionValues) arrayList.get(i);
            TransitionValues transitionValues4 = (TransitionValues) arrayList2.get(i);
            if (!(transitionValues3 == null || transitionValues3.mTargetedTransitions.contains(transition))) {
                transitionValues3 = null;
            }
            if (!(transitionValues4 == null || transitionValues4.mTargetedTransitions.contains(transition))) {
                transitionValues4 = null;
            }
            if (transitionValues3 == null) {
                if (transitionValues4 != null) {
                }
                viewGroup2 = viewGroup;
                i2 = size;
                i++;
                size = i2;
            }
            if (!(transitionValues3 == null || transitionValues4 == null)) {
                if (!isTransitionRequired(transitionValues3, transitionValues4)) {
                    obj = null;
                    if (obj != null) {
                        createAnimator = createAnimator(viewGroup, transitionValues3, transitionValues4);
                        if (createAnimator != null) {
                            if (transitionValues4 == null) {
                                view = transitionValues4.view;
                                String[] transitionProperties = getTransitionProperties();
                                if (view == null && transitionProperties != null && transitionProperties.length > 0) {
                                    transitionValues = new TransitionValues();
                                    transitionValues.view = view;
                                    TransitionValues transitionValues5 = (TransitionValues) scene2.mViewValues.get(view);
                                    if (transitionValues5 != null) {
                                        animator = createAnimator;
                                        i2 = size;
                                        int i3 = 0;
                                        while (i3 < transitionProperties.length) {
                                            TransitionValues transitionValues6 = transitionValues5;
                                            transitionValues.values.put(transitionProperties[i3], transitionValues5.values.get(transitionProperties[i3]));
                                            i3++;
                                            transitionValues5 = transitionValues6;
                                            Scene scene3 = scene2;
                                            ArrayList<TransitionValues> arrayList3 = arrayList;
                                        }
                                    } else {
                                        animator = createAnimator;
                                        i2 = size;
                                    }
                                    int size2 = runningAnimators.size();
                                    for (int i4 = 0; i4 < size2; i4++) {
                                        AnimationInfo animationInfo = (AnimationInfo) runningAnimators.get((Animator) runningAnimators.keyAt(i4));
                                        if (animationInfo.mValues != null && animationInfo.mView == view && animationInfo.mName.equals(getName()) && animationInfo.mValues.equals(transitionValues)) {
                                            transitionValues2 = transitionValues;
                                            obj2 = null;
                                            break;
                                        }
                                    }
                                } else {
                                    animator = createAnimator;
                                    i2 = size;
                                    transitionValues = null;
                                }
                                transitionValues2 = transitionValues;
                                obj2 = animator;
                            } else {
                                animator = createAnimator;
                                i2 = size;
                                view = transitionValues3.view;
                                obj2 = animator;
                                transitionValues2 = null;
                            }
                            if (obj2 == null) {
                                if (transition.mPropagation$24d5c352 != null) {
                                    long startDelay$1c0cff52 = transition.mPropagation$24d5c352.getStartDelay$1c0cff52();
                                    sparseIntArray.put(transition.mAnimators.size(), (int) startDelay$1c0cff52);
                                    j = Math.min(startDelay$1c0cff52, j);
                                }
                                long j2 = j;
                                runningAnimators.put(obj2, new AnimationInfo(view, getName(), transition, ViewUtils.getWindowId(viewGroup), transitionValues2));
                                transition.mAnimators.add(obj2);
                                j = j2;
                            }
                            i++;
                            size = i2;
                        }
                        i2 = size;
                        i++;
                        size = i2;
                    }
                    viewGroup2 = viewGroup;
                    i2 = size;
                    i++;
                    size = i2;
                }
            }
            obj = 1;
            if (obj != null) {
                createAnimator = createAnimator(viewGroup, transitionValues3, transitionValues4);
                if (createAnimator != null) {
                    if (transitionValues4 == null) {
                        animator = createAnimator;
                        i2 = size;
                        view = transitionValues3.view;
                        obj2 = animator;
                        transitionValues2 = null;
                    } else {
                        view = transitionValues4.view;
                        String[] transitionProperties2 = getTransitionProperties();
                        if (view == null) {
                        }
                        animator = createAnimator;
                        i2 = size;
                        transitionValues = null;
                        transitionValues2 = transitionValues;
                        obj2 = animator;
                    }
                    if (obj2 == null) {
                        if (transition.mPropagation$24d5c352 != null) {
                            long startDelay$1c0cff522 = transition.mPropagation$24d5c352.getStartDelay$1c0cff52();
                            sparseIntArray.put(transition.mAnimators.size(), (int) startDelay$1c0cff522);
                            j = Math.min(startDelay$1c0cff522, j);
                        }
                        long j22 = j;
                        runningAnimators.put(obj2, new AnimationInfo(view, getName(), transition, ViewUtils.getWindowId(viewGroup), transitionValues2));
                        transition.mAnimators.add(obj2);
                        j = j22;
                    }
                    i++;
                    size = i2;
                }
                i2 = size;
                i++;
                size = i2;
            }
            viewGroup2 = viewGroup;
            i2 = size;
            i++;
            size = i2;
        }
        if (j != 0) {
            for (int i5 = 0; i5 < sparseIntArray.size(); i5++) {
                Animator animator2 = (Animator) transition.mAnimators.get(sparseIntArray.keyAt(i5));
                animator2.setStartDelay((((long) sparseIntArray.valueAt(i5)) - j) + animator2.getStartDelay());
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean isValidTarget(android.view.View r6) {
        /*
        r5 = this;
        r0 = r6.getId();
        r1 = r5.mTargetIdExcludes;
        r2 = 0;
        if (r1 == 0) goto L_0x0016;
    L_0x0009:
        r1 = r5.mTargetIdExcludes;
        r3 = java.lang.Integer.valueOf(r0);
        r1 = r1.contains(r3);
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r2;
    L_0x0016:
        r1 = r5.mTargetExcludes;
        if (r1 == 0) goto L_0x0023;
    L_0x001a:
        r1 = r5.mTargetExcludes;
        r1 = r1.contains(r6);
        if (r1 == 0) goto L_0x0023;
    L_0x0022:
        return r2;
    L_0x0023:
        r1 = r5.mTargetTypeExcludes;
        if (r1 == 0) goto L_0x0042;
    L_0x0027:
        r1 = r5.mTargetTypeExcludes;
        r1 = r1.size();
        r3 = r2;
    L_0x002e:
        if (r3 >= r1) goto L_0x0042;
    L_0x0030:
        r4 = r5.mTargetTypeExcludes;
        r4 = r4.get(r3);
        r4 = (java.lang.Class) r4;
        r4 = r4.isInstance(r6);
        if (r4 == 0) goto L_0x003f;
    L_0x003e:
        return r2;
    L_0x003f:
        r3 = r3 + 1;
        goto L_0x002e;
    L_0x0042:
        r1 = r5.mTargetNameExcludes;
        if (r1 == 0) goto L_0x0059;
    L_0x0046:
        r1 = android.support.v4.view.ViewCompat.getTransitionName(r6);
        if (r1 == 0) goto L_0x0059;
    L_0x004c:
        r1 = r5.mTargetNameExcludes;
        r3 = android.support.v4.view.ViewCompat.getTransitionName(r6);
        r1 = r1.contains(r3);
        if (r1 == 0) goto L_0x0059;
    L_0x0058:
        return r2;
    L_0x0059:
        r1 = r5.mTargetIds;
        r1 = r1.size();
        r3 = 1;
        if (r1 != 0) goto L_0x0083;
    L_0x0062:
        r1 = r5.mTargets;
        r1 = r1.size();
        if (r1 != 0) goto L_0x0083;
    L_0x006a:
        r1 = r5.mTargetTypes;
        if (r1 == 0) goto L_0x0076;
    L_0x006e:
        r1 = r5.mTargetTypes;
        r1 = r1.isEmpty();
        if (r1 == 0) goto L_0x0083;
    L_0x0076:
        r1 = r5.mTargetNames;
        if (r1 == 0) goto L_0x0082;
    L_0x007a:
        r1 = r5.mTargetNames;
        r1 = r1.isEmpty();
        if (r1 == 0) goto L_0x0083;
    L_0x0082:
        return r3;
    L_0x0083:
        r1 = r5.mTargetIds;
        r0 = java.lang.Integer.valueOf(r0);
        r0 = r1.contains(r0);
        if (r0 != 0) goto L_0x00c9;
    L_0x008f:
        r0 = r5.mTargets;
        r0 = r0.contains(r6);
        if (r0 == 0) goto L_0x0098;
    L_0x0097:
        goto L_0x00c9;
    L_0x0098:
        r0 = r5.mTargetNames;
        if (r0 == 0) goto L_0x00a9;
    L_0x009c:
        r0 = r5.mTargetNames;
        r1 = android.support.v4.view.ViewCompat.getTransitionName(r6);
        r0 = r0.contains(r1);
        if (r0 == 0) goto L_0x00a9;
    L_0x00a8:
        return r3;
    L_0x00a9:
        r0 = r5.mTargetTypes;
        if (r0 == 0) goto L_0x00c8;
    L_0x00ad:
        r0 = r2;
    L_0x00ae:
        r1 = r5.mTargetTypes;
        r1 = r1.size();
        if (r0 >= r1) goto L_0x00c8;
    L_0x00b6:
        r1 = r5.mTargetTypes;
        r1 = r1.get(r0);
        r1 = (java.lang.Class) r1;
        r1 = r1.isInstance(r6);
        if (r1 == 0) goto L_0x00c5;
    L_0x00c4:
        return r3;
    L_0x00c5:
        r0 = r0 + 1;
        goto L_0x00ae;
    L_0x00c8:
        return r2;
    L_0x00c9:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.Transition.isValidTarget(android.view.View):boolean");
    }

    private static ArrayMap<Animator, AnimationInfo> getRunningAnimators() {
        ArrayMap<Animator, AnimationInfo> arrayMap = (ArrayMap) sRunningAnimators.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        arrayMap = new ArrayMap();
        sRunningAnimators.set(arrayMap);
        return arrayMap;
    }

    @RestrictTo
    protected void runAnimators() {
        start();
        ArrayMap runningAnimators = getRunningAnimators();
        Iterator it = this.mAnimators.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (runningAnimators.containsKey(animator)) {
                start();
                runAnimator(animator, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    private void runAnimator(Animator animator, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() {
                public final void onAnimationStart(Animator animator) {
                    Transition.this.mCurrentAnimators.add(animator);
                }

                public final void onAnimationEnd(Animator animator) {
                    arrayMap.remove(animator);
                    Transition.this.mCurrentAnimators.remove(animator);
                }
            });
            animate(animator);
        }
    }

    public Transition addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    public Transition addTarget(int i) {
        if (i != 0) {
            this.mTargetIds.add(Integer.valueOf(i));
        }
        return this;
    }

    public Transition addTarget(String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList();
        }
        this.mTargetNames.add(str);
        return this;
    }

    public Transition addTarget(Class cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    public Transition removeTarget(View view) {
        this.mTargets.remove(view);
        return this;
    }

    public Transition removeTarget(int i) {
        if (i != 0) {
            this.mTargetIds.remove(Integer.valueOf(i));
        }
        return this;
    }

    public Transition removeTarget(String str) {
        if (this.mTargetNames != null) {
            this.mTargetNames.remove(str);
        }
        return this;
    }

    public Transition removeTarget(Class cls) {
        if (this.mTargetTypes != null) {
            this.mTargetTypes.remove(cls);
        }
        return this;
    }

    public Transition excludeTarget(View view, boolean z) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z);
        return this;
    }

    public Transition excludeTarget(int i, boolean z) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i, z);
        return this;
    }

    public Transition excludeTarget(String str, boolean z) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z);
        return this;
    }

    public Transition excludeChildren(View view, boolean z) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z);
        return this;
    }

    public Transition excludeChildren(int i, boolean z) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i, z);
        return this;
    }

    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i, boolean z) {
        if (i <= 0) {
            return arrayList;
        }
        if (z) {
            i = Integer.valueOf(i);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (arrayList.contains(i)) {
                return arrayList;
            }
            arrayList.add(i);
            return arrayList;
        }
        i = Integer.valueOf(i);
        if (arrayList == null) {
            return arrayList;
        }
        arrayList.remove(i);
        return arrayList.isEmpty() != 0 ? null : arrayList;
    }

    public Transition excludeTarget(Class cls, boolean z) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z);
        return this;
    }

    public Transition excludeChildren(Class cls, boolean z) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z);
        return this;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    public List<Class> getTargetTypes() {
        return this.mTargetTypes;
    }

    void captureValues(ViewGroup viewGroup, boolean z) {
        clearValues(z);
        int i = 0;
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (this.mTargetNames == null || this.mTargetNames.isEmpty())) {
            int i2;
            View view;
            if (this.mTargetTypes != null) {
                if (this.mTargetTypes.isEmpty()) {
                }
            }
            for (i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                View findViewById = viewGroup.findViewById(((Integer) this.mTargetIds.get(i2)).intValue());
                if (findViewById != null) {
                    TransitionValues transitionValues = new TransitionValues();
                    transitionValues.view = findViewById;
                    if (z) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.mTargetedTransitions.add(this);
                    capturePropagationValues(transitionValues);
                    if (z) {
                        addViewValues$211bdba2(this.mStartValues$5e6ef4bf, findViewById, transitionValues);
                    } else {
                        addViewValues$211bdba2(this.mEndValues$5e6ef4bf, findViewById, transitionValues);
                    }
                }
            }
            for (viewGroup = null; viewGroup < this.mTargets.size(); viewGroup++) {
                view = (View) this.mTargets.get(viewGroup);
                TransitionValues transitionValues2 = new TransitionValues();
                transitionValues2.view = view;
                if (z) {
                    captureStartValues(transitionValues2);
                } else {
                    captureEndValues(transitionValues2);
                }
                transitionValues2.mTargetedTransitions.add(this);
                capturePropagationValues(transitionValues2);
                if (z) {
                    addViewValues$211bdba2(this.mStartValues$5e6ef4bf, view, transitionValues2);
                } else {
                    addViewValues$211bdba2(this.mEndValues$5e6ef4bf, view, transitionValues2);
                }
            }
            if (!z && this.mNameOverrides != null) {
                viewGroup = this.mNameOverrides.size();
                z = new ArrayList(viewGroup);
                for (i2 = 0; i2 < viewGroup; i2++) {
                    z.add(this.mStartValues$5e6ef4bf.mNameValues.remove((String) this.mNameOverrides.keyAt(i2)));
                }
                while (i < viewGroup) {
                    view = (View) z.get(i);
                    if (view != null) {
                        this.mStartValues$5e6ef4bf.mNameValues.put((String) this.mNameOverrides.valueAt(i), view);
                    }
                    i++;
                }
                return;
            }
        }
        captureHierarchy(viewGroup, z);
        if (!z) {
        }
    }

    private static void addViewValues$211bdba2(Scene scene, View view, TransitionValues transitionValues) {
        scene.mViewValues.put(view, transitionValues);
        transitionValues = view.getId();
        if (transitionValues >= null) {
            if (scene.mIdValues.indexOfKey(transitionValues) >= 0) {
                scene.mIdValues.put(transitionValues, null);
            } else {
                scene.mIdValues.put(transitionValues, view);
            }
        }
        transitionValues = ViewCompat.getTransitionName(view);
        if (transitionValues != null) {
            if (scene.mNameValues.containsKey(transitionValues)) {
                scene.mNameValues.put(transitionValues, null);
            } else {
                scene.mNameValues.put(transitionValues, view);
            }
        }
        if ((view.getParent() instanceof ListView) != null) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (scene.mItemIdValues.indexOfKey(itemIdAtPosition) >= null) {
                    view = (View) scene.mItemIdValues.get(itemIdAtPosition);
                    if (view != null) {
                        ViewCompat.setHasTransientState(view, null);
                        scene.mItemIdValues.put(itemIdAtPosition, null);
                    }
                    return;
                }
                ViewCompat.setHasTransientState(view, true);
                scene.mItemIdValues.put(itemIdAtPosition, view);
            }
        }
    }

    void clearValues(boolean z) {
        if (z) {
            this.mStartValues$5e6ef4bf.mViewValues.clear();
            this.mStartValues$5e6ef4bf.mIdValues.clear();
            this.mStartValues$5e6ef4bf.mItemIdValues.clear();
            return;
        }
        this.mEndValues$5e6ef4bf.mViewValues.clear();
        this.mEndValues$5e6ef4bf.mIdValues.clear();
        this.mEndValues$5e6ef4bf.mItemIdValues.clear();
    }

    private void captureHierarchy(View view, boolean z) {
        if (view != null) {
            int id = view.getId();
            if (this.mTargetIdExcludes != null && this.mTargetIdExcludes.contains(Integer.valueOf(id))) {
                return;
            }
            if (this.mTargetExcludes == null || !this.mTargetExcludes.contains(view)) {
                int size;
                int i = 0;
                if (this.mTargetTypeExcludes != null) {
                    size = this.mTargetTypeExcludes.size();
                    int i2 = 0;
                    while (i2 < size) {
                        if (!((Class) this.mTargetTypeExcludes.get(i2)).isInstance(view)) {
                            i2++;
                        } else {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues();
                    transitionValues.view = view;
                    if (z) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.mTargetedTransitions.add(this);
                    capturePropagationValues(transitionValues);
                    if (z) {
                        addViewValues$211bdba2(this.mStartValues$5e6ef4bf, view, transitionValues);
                    } else {
                        addViewValues$211bdba2(this.mEndValues$5e6ef4bf, view, transitionValues);
                    }
                }
                if ((view instanceof ViewGroup) && (this.mTargetIdChildExcludes == null || !this.mTargetIdChildExcludes.contains(Integer.valueOf(id)))) {
                    if (this.mTargetChildExcludes == null || !this.mTargetChildExcludes.contains(view)) {
                        if (this.mTargetTypeChildExcludes != null) {
                            id = this.mTargetTypeChildExcludes.size();
                            size = 0;
                            while (size < id) {
                                if (!((Class) this.mTargetTypeChildExcludes.get(size)).isInstance(view)) {
                                    size++;
                                } else {
                                    return;
                                }
                            }
                        }
                        ViewGroup viewGroup = (ViewGroup) view;
                        while (i < viewGroup.getChildCount()) {
                            captureHierarchy(viewGroup.getChildAt(i), z);
                            i++;
                        }
                    }
                }
            }
        }
    }

    public TransitionValues getTransitionValues(View view, boolean z) {
        if (this.mParent != null) {
            return this.mParent.getTransitionValues(view, z);
        }
        return (TransitionValues) (z ? this.mStartValues$5e6ef4bf : this.mEndValues$5e6ef4bf).mViewValues.get(view);
    }

    TransitionValues getMatchedTransitionValues(View view, boolean z) {
        if (this.mParent != null) {
            return this.mParent.getMatchedTransitionValues(view, z);
        }
        ArrayList arrayList = z ? this.mStartValuesList : this.mEndValuesList;
        TransitionValues transitionValues = null;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            TransitionValues transitionValues2 = (TransitionValues) arrayList.get(i2);
            if (transitionValues2 == null) {
                return null;
            }
            if (transitionValues2.view == view) {
                i = i2;
                break;
            }
        }
        if (i >= 0) {
            transitionValues = (TransitionValues) (z ? this.mEndValuesList : this.mStartValuesList).get(i);
        }
        return transitionValues;
    }

    @RestrictTo
    public void pause(View view) {
        if (!this.mEnded) {
            ArrayMap runningAnimators = getRunningAnimators();
            int size = runningAnimators.size();
            view = ViewUtils.getWindowId(view);
            for (size--; size >= 0; size--) {
                AnimationInfo animationInfo = (AnimationInfo) runningAnimators.valueAt(size);
                if (animationInfo.mView != null && view.equals(animationInfo.mWindowId)) {
                    AnimatorUtils.pause((Animator) runningAnimators.keyAt(size));
                }
            }
            if (this.mListeners != null && this.mListeners.size() > null) {
                ArrayList arrayList = (ArrayList) this.mListeners.clone();
                int size2 = arrayList.size();
                for (size = 0; size < size2; size++) {
                    ((TransitionListener) arrayList.get(size)).onTransitionPause$30e4fb03();
                }
            }
            this.mPaused = true;
        }
    }

    @RestrictTo
    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                ArrayMap runningAnimators = getRunningAnimators();
                int size = runningAnimators.size();
                view = ViewUtils.getWindowId(view);
                for (size--; size >= 0; size--) {
                    AnimationInfo animationInfo = (AnimationInfo) runningAnimators.valueAt(size);
                    if (animationInfo.mView != null && view.equals(animationInfo.mWindowId)) {
                        AnimatorUtils.resume((Animator) runningAnimators.keyAt(size));
                    }
                }
                if (this.mListeners != null && this.mListeners.size() > null) {
                    ArrayList arrayList = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList.size();
                    for (size = 0; size < size2; size++) {
                        ((TransitionListener) arrayList.get(size)).onTransitionResume$30e4fb03();
                    }
                }
            }
            this.mPaused = false;
        }
    }

    void playTransition(ViewGroup viewGroup) {
        this.mStartValuesList = new ArrayList();
        this.mEndValuesList = new ArrayList();
        matchStartAndEnd$46d84b55(this.mStartValues$5e6ef4bf, this.mEndValues$5e6ef4bf);
        ArrayMap runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        WindowIdImpl windowId = ViewUtils.getWindowId(viewGroup);
        for (size--; size >= 0; size--) {
            Animator animator = (Animator) runningAnimators.keyAt(size);
            if (animator != null) {
                AnimationInfo animationInfo = (AnimationInfo) runningAnimators.get(animator);
                if (!(animationInfo == null || animationInfo.mView == null || !windowId.equals(animationInfo.mWindowId))) {
                    TransitionValues transitionValues = animationInfo.mValues;
                    View view = animationInfo.mView;
                    TransitionValues transitionValues2 = getTransitionValues(view, true);
                    TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
                    boolean z = !(transitionValues2 == null && matchedTransitionValues == null) && animationInfo.mTransition.isTransitionRequired(transitionValues, matchedTransitionValues);
                    if (z) {
                        if (!animator.isRunning()) {
                            if (!animator.isStarted()) {
                                runningAnimators.remove(animator);
                            }
                        }
                        animator.cancel();
                    }
                }
            }
        }
        createAnimators$130ee614(viewGroup, this.mStartValues$5e6ef4bf, this.mEndValues$5e6ef4bf, this.mStartValuesList, this.mEndValuesList);
        runAnimators();
    }

    public boolean isTransitionRequired(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (!(transitionValues == null || transitionValues2 == null)) {
            String[] transitionProperties = getTransitionProperties();
            if (transitionProperties != null) {
                for (String isValueChanged : transitionProperties) {
                    if (isValueChanged(transitionValues, transitionValues2, isValueChanged)) {
                        return true;
                    }
                }
            } else {
                for (String isValueChanged2 : transitionValues.values.keySet()) {
                    if (isValueChanged(transitionValues, transitionValues2, isValueChanged2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean isValueChanged(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        transitionValues = transitionValues.values.get(str);
        transitionValues2 = transitionValues2.values.get(str);
        if (!(transitionValues == null && transitionValues2 == null)) {
            if (transitionValues != null) {
                if (transitionValues2 != null) {
                    if (transitionValues.equals(transitionValues2) == null) {
                        return true;
                    }
                }
            }
            return true;
        }
        return null;
    }

    @RestrictTo
    protected void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new C00853());
        animator.start();
    }

    @RestrictTo
    protected void start() {
        if (this.mNumInstances == 0) {
            if (this.mListeners != null && this.mListeners.size() > 0) {
                ArrayList arrayList = (ArrayList) this.mListeners.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((TransitionListener) arrayList.get(i)).onTransitionStart$30e4fb03();
                }
            }
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    @RestrictTo
    protected void end() {
        this.mNumInstances--;
        if (this.mNumInstances == 0) {
            int i;
            View view;
            if (this.mListeners != null && this.mListeners.size() > 0) {
                ArrayList arrayList = (ArrayList) this.mListeners.clone();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((TransitionListener) arrayList.get(i2)).onTransitionEnd(this);
                }
            }
            for (i = 0; i < this.mStartValues$5e6ef4bf.mItemIdValues.size(); i++) {
                view = (View) this.mStartValues$5e6ef4bf.mItemIdValues.valueAt(i);
                if (view != null) {
                    ViewCompat.setHasTransientState(view, false);
                }
            }
            for (i = 0; i < this.mEndValues$5e6ef4bf.mItemIdValues.size(); i++) {
                view = (View) this.mEndValues$5e6ef4bf.mItemIdValues.valueAt(i);
                if (view != null) {
                    ViewCompat.setHasTransientState(view, false);
                }
            }
            this.mEnded = true;
        }
    }

    @RestrictTo
    void forceToEnd(ViewGroup viewGroup) {
        ArrayMap runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup != null) {
            viewGroup = ViewUtils.getWindowId(viewGroup);
            for (size--; size >= 0; size--) {
                AnimationInfo animationInfo = (AnimationInfo) runningAnimators.valueAt(size);
                if (!(animationInfo.mView == null || viewGroup == null || !viewGroup.equals(animationInfo.mWindowId))) {
                    ((Animator) runningAnimators.keyAt(size)).end();
                }
            }
        }
    }

    @RestrictTo
    protected void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            ((Animator) this.mCurrentAnimators.get(size)).cancel();
        }
        if (this.mListeners != null && this.mListeners.size() > 0) {
            ArrayList arrayList = (ArrayList) this.mListeners.clone();
            int size2 = arrayList.size();
            for (int i = 0; i < size2; i++) {
                ((TransitionListener) arrayList.get(i)).onTransitionCancel$30e4fb03();
            }
        }
    }

    public Transition addListener(TransitionListener transitionListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(transitionListener);
        return this;
    }

    public Transition removeListener(TransitionListener transitionListener) {
        if (this.mListeners == null) {
            return this;
        }
        this.mListeners.remove(transitionListener);
        if (this.mListeners.size() == null) {
            this.mListeners = null;
        }
        return this;
    }

    public void setPathMotion$52a22057(DirectoryWalker directoryWalker) {
        if (directoryWalker == null) {
            this.mPathMotion$670c4d4e = STRAIGHT_PATH_MOTION$670c4d4e;
        } else {
            this.mPathMotion$670c4d4e = directoryWalker;
        }
    }

    public DirectoryWalker getPathMotion$7a3a016f() {
        return this.mPathMotion$670c4d4e;
    }

    public void setEpicenterCallback(EpicenterCallback epicenterCallback) {
        this.mEpicenterCallback = epicenterCallback;
    }

    public EpicenterCallback getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public Rect getEpicenter() {
        if (this.mEpicenterCallback == null) {
            return null;
        }
        return this.mEpicenterCallback.onGetEpicenter$3bbcb57a();
    }

    public void setPropagation$579df847(Callback callback) {
        this.mPropagation$24d5c352 = callback;
    }

    public Callback getPropagation$1ff5a613() {
        return this.mPropagation$24d5c352;
    }

    void capturePropagationValues(TransitionValues transitionValues) {
        if (!(this.mPropagation$24d5c352 == null || transitionValues.values.isEmpty())) {
            String[] propagationProperties = this.mPropagation$24d5c352.getPropagationProperties();
            if (propagationProperties != null) {
                int i = 0;
                while (i < propagationProperties.length && transitionValues.values.containsKey(propagationProperties[i])) {
                    i++;
                }
            }
        }
    }

    Transition setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    void setCanRemoveViews(boolean z) {
        this.mCanRemoveViews = z;
    }

    public String toString() {
        return toString("");
    }

    public android.support.transition.Transition clone() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = 0;
        r1 = super.clone();	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r1 = (android.support.transition.Transition) r1;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r2 = new java.util.ArrayList;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r2.<init>();	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r1.mAnimators = r2;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r2 = new android.support.transition.Scene;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r2.<init>();	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r1.mStartValues$5e6ef4bf = r2;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r2 = new android.support.transition.Scene;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r2.<init>();	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r1.mEndValues$5e6ef4bf = r2;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r1.mStartValuesList = r0;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        r1.mEndValuesList = r0;	 Catch:{ CloneNotSupportedException -> 0x0021 }
        return r1;
    L_0x0021:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.Transition.clone():android.support.transition.Transition");
    }

    public String getName() {
        return this.mName;
    }

    String toString(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append("@");
        stringBuilder.append(Integer.toHexString(hashCode()));
        stringBuilder.append(": ");
        str = stringBuilder.toString();
        if (this.mDuration != -1) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("dur(");
            stringBuilder.append(this.mDuration);
            stringBuilder.append(") ");
            str = stringBuilder.toString();
        }
        if (this.mStartDelay != -1) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("dly(");
            stringBuilder.append(this.mStartDelay);
            stringBuilder.append(") ");
            str = stringBuilder.toString();
        }
        if (this.mInterpolator != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("interp(");
            stringBuilder.append(this.mInterpolator);
            stringBuilder.append(") ");
            str = stringBuilder.toString();
        }
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            return str;
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("tgts(");
        str = stringBuilder.toString();
        int i = 0;
        if (this.mTargetIds.size() > 0) {
            String str2 = str;
            for (str = null; str < this.mTargetIds.size(); str++) {
                StringBuilder stringBuilder2;
                if (str > null) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str2);
                    stringBuilder2.append(", ");
                    str2 = stringBuilder2.toString();
                }
                stringBuilder2 = new StringBuilder();
                stringBuilder2.append(str2);
                stringBuilder2.append(this.mTargetIds.get(str));
                str2 = stringBuilder2.toString();
            }
            str = str2;
        }
        if (this.mTargets.size() > 0) {
            while (i < this.mTargets.size()) {
                if (i > 0) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(", ");
                    str = stringBuilder.toString();
                }
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(this.mTargets.get(i));
                str = stringBuilder.toString();
                i++;
            }
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t, boolean z) {
        if (t == null) {
            return arrayList;
        }
        if (z) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (arrayList.contains(t)) {
                return arrayList;
            }
            arrayList.add(t);
            return arrayList;
        } else if (arrayList == null) {
            return arrayList;
        } else {
            arrayList.remove(t);
            return arrayList.isEmpty() != null ? null : arrayList;
        }
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z) {
        if (view == null) {
            return arrayList;
        }
        if (z) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (arrayList.contains(view)) {
                return arrayList;
            }
            arrayList.add(view);
            return arrayList;
        } else if (arrayList == null) {
            return arrayList;
        } else {
            arrayList.remove(view);
            return arrayList.isEmpty() != null ? null : arrayList;
        }
    }

    private ArrayList<Class> excludeType(ArrayList<Class> arrayList, Class cls, boolean z) {
        if (cls == null) {
            return arrayList;
        }
        if (z) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (arrayList.contains(cls)) {
                return arrayList;
            }
            arrayList.add(cls);
            return arrayList;
        } else if (arrayList == null) {
            return arrayList;
        } else {
            arrayList.remove(cls);
            return arrayList.isEmpty() != null ? null : arrayList;
        }
    }
}
