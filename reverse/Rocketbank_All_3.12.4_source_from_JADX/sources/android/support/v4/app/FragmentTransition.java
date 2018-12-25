package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class FragmentTransition {
    private static final int[] INVERSE_OPS = new int[]{0, 3, 0, 1, 5, 4, 7, 6, 9, 8};
    private static final FragmentTransitionImpl PLATFORM_IMPL = (VERSION.SDK_INT >= 21 ? new FragmentTransitionCompat21() : null);
    private static final FragmentTransitionImpl SUPPORT_IMPL = resolveSupportImpl();

    static class FragmentContainerTransition {
        public Fragment firstOut;
        public boolean firstOutIsPop;
        public BackStackRecord firstOutTransaction;
        public Fragment lastIn;
        public boolean lastInIsPop;
        public BackStackRecord lastInTransaction;

        FragmentContainerTransition() {
        }
    }

    FragmentTransition() {
    }

    private static android.support.v4.app.FragmentTransitionImpl resolveSupportImpl() {
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
        r0 = "android.support.transition.FragmentTransitionSupport";	 Catch:{ Exception -> 0x0016 }
        r0 = java.lang.Class.forName(r0);	 Catch:{ Exception -> 0x0016 }
        r1 = 0;	 Catch:{ Exception -> 0x0016 }
        r2 = new java.lang.Class[r1];	 Catch:{ Exception -> 0x0016 }
        r0 = r0.getDeclaredConstructor(r2);	 Catch:{ Exception -> 0x0016 }
        r1 = new java.lang.Object[r1];	 Catch:{ Exception -> 0x0016 }
        r0 = r0.newInstance(r1);	 Catch:{ Exception -> 0x0016 }
        r0 = (android.support.v4.app.FragmentTransitionImpl) r0;	 Catch:{ Exception -> 0x0016 }
        return r0;
    L_0x0016:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentTransition.resolveSupportImpl():android.support.v4.app.FragmentTransitionImpl");
    }

    static void startTransitions(FragmentManagerImpl fragmentManagerImpl, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (fragmentManagerImpl.mCurState > 0) {
            SparseArray sparseArray = new SparseArray();
            for (int i3 = i; i3 < i2; i3++) {
                BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i3);
                if (((Boolean) arrayList2.get(i3)).booleanValue()) {
                    calculatePopFragments(backStackRecord, sparseArray, z);
                } else {
                    calculateFragments(backStackRecord, sparseArray, z);
                }
            }
            if (sparseArray.size() != 0) {
                View view = new View(fragmentManagerImpl.mHost.getContext());
                int size = sparseArray.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = sparseArray.keyAt(i4);
                    ArrayMap calculateNameOverrides = calculateNameOverrides(keyAt, arrayList, arrayList2, i, i2);
                    FragmentContainerTransition fragmentContainerTransition = (FragmentContainerTransition) sparseArray.valueAt(i4);
                    if (z) {
                        configureTransitionsReordered(fragmentManagerImpl, keyAt, fragmentContainerTransition, view, calculateNameOverrides);
                    } else {
                        configureTransitionsOrdered(fragmentManagerImpl, keyAt, fragmentContainerTransition, view, calculateNameOverrides);
                    }
                }
            }
        }
    }

    private static ArrayMap<String, String> calculateNameOverrides(int i, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayMap<String, String> arrayMap = new ArrayMap();
        for (i3--; i3 >= i2; i3--) {
            BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i3);
            if (backStackRecord.interactsWith(i)) {
                boolean booleanValue = ((Boolean) arrayList2.get(i3)).booleanValue();
                if (backStackRecord.mSharedElementSourceNames != null) {
                    ArrayList arrayList3;
                    ArrayList arrayList4;
                    int size = backStackRecord.mSharedElementSourceNames.size();
                    if (booleanValue) {
                        arrayList3 = backStackRecord.mSharedElementSourceNames;
                        arrayList4 = backStackRecord.mSharedElementTargetNames;
                    } else {
                        ArrayList arrayList5 = backStackRecord.mSharedElementSourceNames;
                        arrayList3 = backStackRecord.mSharedElementTargetNames;
                        arrayList4 = arrayList5;
                    }
                    for (int i4 = 0; i4 < size; i4++) {
                        String str = (String) arrayList4.get(i4);
                        String str2 = (String) arrayList3.get(i4);
                        String str3 = (String) arrayMap.remove(str2);
                        if (str3 != null) {
                            arrayMap.put(str, str3);
                        } else {
                            arrayMap.put(str, str2);
                        }
                    }
                }
            }
        }
        return arrayMap;
    }

    private static void configureTransitionsReordered(FragmentManagerImpl fragmentManagerImpl, int i, FragmentContainerTransition fragmentContainerTransition, View view, ArrayMap<String, String> arrayMap) {
        FragmentManagerImpl fragmentManagerImpl2 = fragmentManagerImpl;
        FragmentContainerTransition fragmentContainerTransition2 = fragmentContainerTransition;
        View view2 = view;
        View view3 = fragmentManagerImpl2.mContainer.onHasView() ? (ViewGroup) fragmentManagerImpl2.mContainer.onFindViewById(i) : null;
        if (view3 != null) {
            Fragment fragment = fragmentContainerTransition2.lastIn;
            Fragment fragment2 = fragmentContainerTransition2.firstOut;
            FragmentTransitionImpl chooseImpl = chooseImpl(fragment2, fragment);
            if (chooseImpl != null) {
                boolean z = fragmentContainerTransition2.lastInIsPop;
                boolean z2 = fragmentContainerTransition2.firstOutIsPop;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Object enterTransition = getEnterTransition(chooseImpl, fragment, z);
                Object exitTransition = getExitTransition(chooseImpl, fragment2, z2);
                Object obj = enterTransition;
                View view4 = view3;
                ArrayList arrayList3 = arrayList2;
                Object configureSharedElementsReordered = configureSharedElementsReordered(chooseImpl, view3, view2, arrayMap, fragmentContainerTransition2, arrayList2, arrayList, enterTransition, exitTransition);
                Object obj2 = obj;
                if (obj2 == null && configureSharedElementsReordered == null) {
                    enterTransition = exitTransition;
                    if (enterTransition == null) {
                        return;
                    }
                }
                enterTransition = exitTransition;
                ArrayList configureEnteringExitingViews = configureEnteringExitingViews(chooseImpl, enterTransition, fragment2, arrayList3, view2);
                ArrayList configureEnteringExitingViews2 = configureEnteringExitingViews(chooseImpl, obj2, fragment, arrayList, view2);
                setViewVisibility(configureEnteringExitingViews2, 4);
                Fragment fragment3 = fragment;
                ArrayList arrayList4 = configureEnteringExitingViews;
                Object mergeTransitions = mergeTransitions(chooseImpl, obj2, enterTransition, configureSharedElementsReordered, fragment3, z);
                if (mergeTransitions != null) {
                    replaceHide(chooseImpl, enterTransition, fragment2, arrayList4);
                    ArrayList prepareSetNameOverridesReordered = chooseImpl.prepareSetNameOverridesReordered(arrayList);
                    chooseImpl.scheduleRemoveTargets(mergeTransitions, obj2, configureEnteringExitingViews2, enterTransition, arrayList4, configureSharedElementsReordered, arrayList);
                    View view5 = view4;
                    chooseImpl.beginDelayedTransition(view5, mergeTransitions);
                    chooseImpl.setNameOverridesReordered(view5, arrayList3, arrayList, prepareSetNameOverridesReordered, arrayMap);
                    setViewVisibility(configureEnteringExitingViews2, 0);
                    chooseImpl.swapSharedElementTargets(configureSharedElementsReordered, arrayList3, arrayList);
                }
            }
        }
    }

    private static void replaceHide(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            fragmentTransitionImpl.scheduleHideFragmentView(obj, fragment.getView(), arrayList);
            OneShotPreDrawListener.add(fragment.mContainer, new Runnable() {
                public final void run() {
                    FragmentTransition.setViewVisibility(arrayList, 4);
                }
            });
        }
    }

    private static void configureTransitionsOrdered(FragmentManagerImpl fragmentManagerImpl, int i, FragmentContainerTransition fragmentContainerTransition, View view, ArrayMap<String, String> arrayMap) {
        FragmentManagerImpl fragmentManagerImpl2 = fragmentManagerImpl;
        FragmentContainerTransition fragmentContainerTransition2 = fragmentContainerTransition;
        View view2 = view;
        ArrayMap<String, String> arrayMap2 = arrayMap;
        View view3 = fragmentManagerImpl2.mContainer.onHasView() ? (ViewGroup) fragmentManagerImpl2.mContainer.onFindViewById(i) : null;
        if (view3 != null) {
            Fragment fragment = fragmentContainerTransition2.lastIn;
            Fragment fragment2 = fragmentContainerTransition2.firstOut;
            FragmentTransitionImpl chooseImpl = chooseImpl(fragment2, fragment);
            if (chooseImpl != null) {
                Object obj;
                Object obj2;
                Object mergeTransitions;
                ArrayList arrayList;
                FragmentTransitionImpl fragmentTransitionImpl;
                ArrayList arrayList2;
                boolean z = fragmentContainerTransition2.lastInIsPop;
                boolean z2 = fragmentContainerTransition2.firstOutIsPop;
                Object enterTransition = getEnterTransition(chooseImpl, fragment, z);
                Object exitTransition = getExitTransition(chooseImpl, fragment2, z2);
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = arrayList3;
                Object obj3 = exitTransition;
                Object obj4 = enterTransition;
                FragmentTransitionImpl fragmentTransitionImpl2 = chooseImpl;
                exitTransition = configureSharedElementsOrdered(chooseImpl, view3, view2, arrayMap2, fragmentContainerTransition2, arrayList3, arrayList4, enterTransition, obj3);
                Object obj5 = obj4;
                if (obj5 == null && exitTransition == null) {
                    obj = obj3;
                    if (obj == null) {
                        return;
                    }
                }
                obj = obj3;
                ArrayList configureEnteringExitingViews = configureEnteringExitingViews(fragmentTransitionImpl2, obj, fragment2, arrayList5, view2);
                if (configureEnteringExitingViews != null) {
                    if (!configureEnteringExitingViews.isEmpty()) {
                        obj2 = obj;
                        fragmentTransitionImpl2.addTarget(obj5, view2);
                        mergeTransitions = mergeTransitions(fragmentTransitionImpl2, obj5, obj2, exitTransition, fragment, fragmentContainerTransition2.lastInIsPop);
                        if (mergeTransitions != null) {
                            arrayList = new ArrayList();
                            fragmentTransitionImpl = fragmentTransitionImpl2;
                            arrayList5 = arrayList;
                            fragmentTransitionImpl.scheduleRemoveTargets(mergeTransitions, obj5, arrayList, obj2, configureEnteringExitingViews, exitTransition, arrayList4);
                            scheduleTargetChange(fragmentTransitionImpl, view3, fragment, view2, arrayList4, obj5, arrayList5, obj2, configureEnteringExitingViews);
                            arrayList2 = arrayList4;
                            fragmentTransitionImpl2.setNameOverridesOrdered(view3, arrayList2, arrayMap2);
                            fragmentTransitionImpl2.beginDelayedTransition(view3, mergeTransitions);
                            fragmentTransitionImpl2.scheduleNameReset(view3, arrayList2, arrayMap2);
                        }
                    }
                }
                obj2 = null;
                fragmentTransitionImpl2.addTarget(obj5, view2);
                mergeTransitions = mergeTransitions(fragmentTransitionImpl2, obj5, obj2, exitTransition, fragment, fragmentContainerTransition2.lastInIsPop);
                if (mergeTransitions != null) {
                    arrayList = new ArrayList();
                    fragmentTransitionImpl = fragmentTransitionImpl2;
                    arrayList5 = arrayList;
                    fragmentTransitionImpl.scheduleRemoveTargets(mergeTransitions, obj5, arrayList, obj2, configureEnteringExitingViews, exitTransition, arrayList4);
                    scheduleTargetChange(fragmentTransitionImpl, view3, fragment, view2, arrayList4, obj5, arrayList5, obj2, configureEnteringExitingViews);
                    arrayList2 = arrayList4;
                    fragmentTransitionImpl2.setNameOverridesOrdered(view3, arrayList2, arrayMap2);
                    fragmentTransitionImpl2.beginDelayedTransition(view3, mergeTransitions);
                    fragmentTransitionImpl2.scheduleNameReset(view3, arrayList2, arrayMap2);
                }
            }
        }
    }

    private static void scheduleTargetChange(FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        final Object obj3 = obj;
        final FragmentTransitionImpl fragmentTransitionImpl2 = fragmentTransitionImpl;
        final View view2 = view;
        final Fragment fragment2 = fragment;
        final ArrayList<View> arrayList4 = arrayList;
        final ArrayList<View> arrayList5 = arrayList2;
        final ArrayList<View> arrayList6 = arrayList3;
        final Object obj4 = obj2;
        OneShotPreDrawListener.add(viewGroup, new Runnable() {
            public final void run() {
                if (obj3 != null) {
                    fragmentTransitionImpl2.removeTarget(obj3, view2);
                    arrayList5.addAll(FragmentTransition.configureEnteringExitingViews(fragmentTransitionImpl2, obj3, fragment2, arrayList4, view2));
                }
                if (arrayList6 != null) {
                    if (obj4 != null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(view2);
                        fragmentTransitionImpl2.replaceTargets(obj4, arrayList6, arrayList);
                    }
                    arrayList6.clear();
                    arrayList6.add(view2);
                }
            }
        });
    }

    private static FragmentTransitionImpl chooseImpl(Fragment fragment, Fragment fragment2) {
        List arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            exitTransition = fragment.getReturnTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            fragment = fragment.getSharedElementReturnTransition();
            if (fragment != null) {
                arrayList.add(fragment);
            }
        }
        if (fragment2 != null) {
            fragment = fragment2.getEnterTransition();
            if (fragment != null) {
                arrayList.add(fragment);
            }
            fragment = fragment2.getReenterTransition();
            if (fragment != null) {
                arrayList.add(fragment);
            }
            fragment = fragment2.getSharedElementEnterTransition();
            if (fragment != null) {
                arrayList.add(fragment);
            }
        }
        if (arrayList.isEmpty() != null) {
            return null;
        }
        if (PLATFORM_IMPL != null && canHandleAll(PLATFORM_IMPL, arrayList) != null) {
            return PLATFORM_IMPL;
        }
        if (SUPPORT_IMPL != null && canHandleAll(SUPPORT_IMPL, arrayList) != null) {
            return SUPPORT_IMPL;
        }
        if (PLATFORM_IMPL == null) {
            if (SUPPORT_IMPL == null) {
                return null;
            }
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static boolean canHandleAll(FragmentTransitionImpl fragmentTransitionImpl, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!fragmentTransitionImpl.canHandle(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static Object getSharedElementTransition(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment != null) {
            if (fragment2 != null) {
                if (z) {
                    fragment = fragment2.getSharedElementReturnTransition();
                } else {
                    fragment = fragment.getSharedElementEnterTransition();
                }
                return fragmentTransitionImpl.wrapTransitionInSet(fragmentTransitionImpl.cloneTransition(fragment));
            }
        }
        return null;
    }

    private static Object getEnterTransition(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        if (z) {
            fragment = fragment.getReenterTransition();
        } else {
            fragment = fragment.getEnterTransition();
        }
        return fragmentTransitionImpl.cloneTransition(fragment);
    }

    private static Object getExitTransition(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        if (z) {
            fragment = fragment.getReturnTransition();
        } else {
            fragment = fragment.getExitTransition();
        }
        return fragmentTransitionImpl.cloneTransition(fragment);
    }

    private static Object configureSharedElementsReordered(FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, View view, ArrayMap<String, String> arrayMap, FragmentContainerTransition fragmentContainerTransition, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        final FragmentTransitionImpl fragmentTransitionImpl2 = fragmentTransitionImpl;
        View view2 = view;
        ArrayMap<String, String> arrayMap2 = arrayMap;
        FragmentContainerTransition fragmentContainerTransition2 = fragmentContainerTransition;
        ArrayList<View> arrayList3 = arrayList;
        ArrayList<View> arrayList4 = arrayList2;
        Object obj3 = obj;
        Fragment fragment = fragmentContainerTransition2.lastIn;
        Fragment fragment2 = fragmentContainerTransition2.firstOut;
        if (fragment != null) {
            fragment.getView().setVisibility(0);
        }
        if (fragment != null) {
            if (fragment2 != null) {
                Object obj4;
                Object obj5;
                boolean z = fragmentContainerTransition2.lastInIsPop;
                if (arrayMap.isEmpty()) {
                    obj4 = null;
                } else {
                    obj4 = getSharedElementTransition(fragmentTransitionImpl2, fragment, fragment2, z);
                }
                ArrayMap captureOutSharedElements = captureOutSharedElements(fragmentTransitionImpl2, arrayMap2, obj4, fragmentContainerTransition2);
                ArrayMap captureInSharedElements = captureInSharedElements(fragmentTransitionImpl2, arrayMap2, obj4, fragmentContainerTransition2);
                if (arrayMap.isEmpty()) {
                    if (captureOutSharedElements != null) {
                        captureOutSharedElements.clear();
                    }
                    if (captureInSharedElements != null) {
                        captureInSharedElements.clear();
                    }
                    obj5 = null;
                } else {
                    addSharedElementsWithMatchingNames(arrayList3, captureOutSharedElements, arrayMap.keySet());
                    addSharedElementsWithMatchingNames(arrayList4, captureInSharedElements, arrayMap.values());
                    obj5 = obj4;
                }
                if (obj3 == null && obj2 == null && obj5 == null) {
                    return null;
                }
                Rect rect;
                View view3;
                callSharedElementStartEnd(fragment, fragment2, z, captureOutSharedElements, true);
                if (obj5 != null) {
                    arrayList4.add(view2);
                    fragmentTransitionImpl2.setSharedElementTargets(obj5, view2, arrayList3);
                    setOutEpicenter(fragmentTransitionImpl2, obj5, obj2, captureOutSharedElements, fragmentContainerTransition2.firstOutIsPop, fragmentContainerTransition2.firstOutTransaction);
                    Rect rect2 = new Rect();
                    View inEpicenterView = getInEpicenterView(captureInSharedElements, fragmentContainerTransition2, obj3, z);
                    if (inEpicenterView != null) {
                        fragmentTransitionImpl2.setEpicenter(obj3, rect2);
                    }
                    rect = rect2;
                    view3 = inEpicenterView;
                } else {
                    view3 = null;
                    rect = view3;
                }
                final Fragment fragment3 = fragment;
                final Fragment fragment4 = fragment2;
                final boolean z2 = z;
                final ArrayMap arrayMap3 = captureInSharedElements;
                OneShotPreDrawListener.add(viewGroup, new Runnable() {
                    public final void run() {
                        FragmentTransition.callSharedElementStartEnd(fragment3, fragment4, z2, arrayMap3, false);
                        if (view3 != null) {
                            fragmentTransitionImpl2.getBoundsOnScreen(view3, rect);
                        }
                    }
                });
                return obj5;
            }
        }
        return null;
    }

    private static void addSharedElementsWithMatchingNames(ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, Collection<String> collection) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View view = (View) arrayMap.valueAt(size);
            if (collection.contains(ViewCompat.getTransitionName(view))) {
                arrayList.add(view);
            }
        }
    }

    private static Object configureSharedElementsOrdered(FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, View view, ArrayMap<String, String> arrayMap, FragmentContainerTransition fragmentContainerTransition, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        FragmentTransitionImpl fragmentTransitionImpl2 = fragmentTransitionImpl;
        FragmentContainerTransition fragmentContainerTransition2 = fragmentContainerTransition;
        final ArrayList<View> arrayList3 = arrayList;
        final Object obj3 = obj;
        Fragment fragment = fragmentContainerTransition2.lastIn;
        Fragment fragment2 = fragmentContainerTransition2.firstOut;
        if (fragment != null) {
            if (fragment2 != null) {
                ArrayMap arrayMap2;
                Object obj4;
                Object obj5;
                boolean z = fragmentContainerTransition2.lastInIsPop;
                if (arrayMap.isEmpty()) {
                    arrayMap2 = arrayMap;
                    obj4 = null;
                } else {
                    obj4 = getSharedElementTransition(fragmentTransitionImpl2, fragment, fragment2, z);
                    arrayMap2 = arrayMap;
                }
                ArrayMap captureOutSharedElements = captureOutSharedElements(fragmentTransitionImpl2, arrayMap2, obj4, fragmentContainerTransition2);
                if (arrayMap.isEmpty()) {
                    obj5 = null;
                } else {
                    arrayList3.addAll(captureOutSharedElements.values());
                    obj5 = obj4;
                }
                if (obj3 == null && obj2 == null && obj5 == null) {
                    return null;
                }
                Rect rect;
                callSharedElementStartEnd(fragment, fragment2, z, captureOutSharedElements, true);
                if (obj5 != null) {
                    rect = new Rect();
                    fragmentTransitionImpl2.setSharedElementTargets(obj5, view, arrayList3);
                    setOutEpicenter(fragmentTransitionImpl2, obj5, obj2, captureOutSharedElements, fragmentContainerTransition2.firstOutIsPop, fragmentContainerTransition2.firstOutTransaction);
                    if (obj3 != null) {
                        fragmentTransitionImpl2.setEpicenter(obj3, rect);
                    }
                } else {
                    rect = null;
                }
                final FragmentTransitionImpl fragmentTransitionImpl3 = fragmentTransitionImpl2;
                final ArrayMap arrayMap3 = arrayMap2;
                final Object obj6 = obj5;
                final FragmentContainerTransition fragmentContainerTransition3 = fragmentContainerTransition2;
                C01064 c01064 = r0;
                final ArrayList<View> arrayList4 = arrayList2;
                final View view2 = view;
                final Fragment fragment3 = fragment;
                fragment = fragment2;
                final boolean z2 = z;
                final Rect rect2 = rect;
                C01064 c010642 = new Runnable() {
                    public final void run() {
                        ArrayMap access$300 = FragmentTransition.captureInSharedElements(fragmentTransitionImpl3, arrayMap3, obj6, fragmentContainerTransition3);
                        if (access$300 != null) {
                            arrayList4.addAll(access$300.values());
                            arrayList4.add(view2);
                        }
                        FragmentTransition.callSharedElementStartEnd(fragment3, fragment, z2, access$300, false);
                        if (obj6 != null) {
                            fragmentTransitionImpl3.swapSharedElementTargets(obj6, arrayList3, arrayList4);
                            View access$400 = FragmentTransition.getInEpicenterView(access$300, fragmentContainerTransition3, obj3, z2);
                            if (access$400 != null) {
                                fragmentTransitionImpl3.getBoundsOnScreen(access$400, rect2);
                            }
                        }
                    }
                };
                OneShotPreDrawListener.add(viewGroup, c01064);
                return obj5;
            }
        }
        return null;
    }

    private static ArrayMap<String, View> captureOutSharedElements(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentContainerTransition fragmentContainerTransition) {
        if (!arrayMap.isEmpty()) {
            if (obj != null) {
                obj = fragmentContainerTransition.firstOut;
                ArrayMap<String, View> arrayMap2 = new ArrayMap();
                fragmentTransitionImpl.findNamedViews(arrayMap2, obj.getView());
                fragmentTransitionImpl = fragmentContainerTransition.firstOutTransaction;
                if (fragmentContainerTransition.firstOutIsPop != null) {
                    obj = obj.getEnterTransitionCallback();
                    fragmentTransitionImpl = fragmentTransitionImpl.mSharedElementTargetNames;
                } else {
                    obj = obj.getExitTransitionCallback();
                    fragmentTransitionImpl = fragmentTransitionImpl.mSharedElementSourceNames;
                }
                arrayMap2.retainAll(fragmentTransitionImpl);
                if (obj != null) {
                    obj.onMapSharedElements(fragmentTransitionImpl, arrayMap2);
                    for (obj = fragmentTransitionImpl.size() - 1; obj >= null; obj--) {
                        String str = (String) fragmentTransitionImpl.get(obj);
                        View view = (View) arrayMap2.get(str);
                        if (view == null) {
                            arrayMap.remove(str);
                        } else if (!str.equals(ViewCompat.getTransitionName(view))) {
                            arrayMap.put(ViewCompat.getTransitionName(view), (String) arrayMap.remove(str));
                        }
                    }
                } else {
                    arrayMap.retainAll(arrayMap2.keySet());
                }
                return arrayMap2;
            }
        }
        arrayMap.clear();
        return null;
    }

    private static ArrayMap<String, View> captureInSharedElements(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentContainerTransition fragmentContainerTransition) {
        Fragment fragment = fragmentContainerTransition.lastIn;
        View view = fragment.getView();
        if (!(arrayMap.isEmpty() || obj == null)) {
            if (view != null) {
                obj = new ArrayMap();
                fragmentTransitionImpl.findNamedViews(obj, view);
                fragmentTransitionImpl = fragmentContainerTransition.lastInTransaction;
                if (fragmentContainerTransition.lastInIsPop != null) {
                    fragmentContainerTransition = fragment.getExitTransitionCallback();
                    fragmentTransitionImpl = fragmentTransitionImpl.mSharedElementSourceNames;
                } else {
                    fragmentContainerTransition = fragment.getEnterTransitionCallback();
                    fragmentTransitionImpl = fragmentTransitionImpl.mSharedElementTargetNames;
                }
                if (fragmentTransitionImpl != null) {
                    obj.retainAll(fragmentTransitionImpl);
                    obj.retainAll(arrayMap.values());
                }
                if (fragmentContainerTransition != null) {
                    fragmentContainerTransition.onMapSharedElements(fragmentTransitionImpl, obj);
                    for (fragmentContainerTransition = fragmentTransitionImpl.size() - 1; fragmentContainerTransition >= null; fragmentContainerTransition--) {
                        String str = (String) fragmentTransitionImpl.get(fragmentContainerTransition);
                        view = (View) obj.get(str);
                        if (view == null) {
                            str = findKeyForValue(arrayMap, str);
                            if (str != null) {
                                arrayMap.remove(str);
                            }
                        } else if (!str.equals(ViewCompat.getTransitionName(view))) {
                            str = findKeyForValue(arrayMap, str);
                            if (str != null) {
                                arrayMap.put(str, ViewCompat.getTransitionName(view));
                            }
                        }
                    }
                } else {
                    retainValues(arrayMap, obj);
                }
                return obj;
            }
        }
        arrayMap.clear();
        return null;
    }

    private static String findKeyForValue(ArrayMap<String, String> arrayMap, String str) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(arrayMap.valueAt(i))) {
                return (String) arrayMap.keyAt(i);
            }
        }
        return null;
    }

    private static View getInEpicenterView(ArrayMap<String, View> arrayMap, FragmentContainerTransition fragmentContainerTransition, Object obj, boolean z) {
        fragmentContainerTransition = fragmentContainerTransition.lastInTransaction;
        if (obj == null || arrayMap == null || fragmentContainerTransition.mSharedElementSourceNames == null || fragmentContainerTransition.mSharedElementSourceNames.isEmpty() != null) {
            return null;
        }
        if (z) {
            fragmentContainerTransition = (String) fragmentContainerTransition.mSharedElementSourceNames.get(0);
        } else {
            fragmentContainerTransition = (String) fragmentContainerTransition.mSharedElementTargetNames.get(0);
        }
        return (View) arrayMap.get(fragmentContainerTransition);
    }

    private static void setOutEpicenter(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, ArrayMap<String, View> arrayMap, boolean z, BackStackRecord backStackRecord) {
        if (backStackRecord.mSharedElementSourceNames != null && !backStackRecord.mSharedElementSourceNames.isEmpty()) {
            if (z) {
                z = (String) backStackRecord.mSharedElementTargetNames.get(0);
            } else {
                z = (String) backStackRecord.mSharedElementSourceNames.get(0);
            }
            View view = (View) arrayMap.get(z);
            fragmentTransitionImpl.setEpicenter(obj, view);
            if (obj2 != null) {
                fragmentTransitionImpl.setEpicenter(obj2, view);
            }
        }
    }

    private static void retainValues(ArrayMap<String, String> arrayMap, ArrayMap<String, View> arrayMap2) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            if (!arrayMap2.containsKey((String) arrayMap.valueAt(size))) {
                arrayMap.removeAt(size);
            }
        }
    }

    private static void callSharedElementStartEnd(Fragment fragment, Fragment fragment2, boolean z, ArrayMap<String, View> arrayMap, boolean z2) {
        if (z) {
            fragment = fragment2.getEnterTransitionCallback();
        } else {
            fragment = fragment.getEnterTransitionCallback();
        }
        if (fragment != null) {
            int i;
            fragment2 = new ArrayList();
            z = new ArrayList();
            int i2 = 0;
            if (arrayMap == null) {
                i = 0;
            } else {
                i = arrayMap.size();
            }
            while (i2 < i) {
                z.add(arrayMap.keyAt(i2));
                fragment2.add(arrayMap.valueAt(i2));
                i2++;
            }
            if (z2) {
                fragment.onSharedElementStart(z, fragment2, null);
                return;
            }
            fragment.onSharedElementEnd(z, fragment2, null);
        }
    }

    private static ArrayList<View> configureEnteringExitingViews(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList();
        fragment = fragment.getView();
        if (fragment != null) {
            fragmentTransitionImpl.captureTransitioningViews(arrayList2, fragment);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty() != null) {
            return arrayList2;
        }
        arrayList2.add(view);
        fragmentTransitionImpl.addTargets(obj, arrayList2);
        return arrayList2;
    }

    private static void setViewVisibility(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((View) arrayList.get(size)).setVisibility(i);
            }
        }
    }

    private static Object mergeTransitions(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        fragment = (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        if (fragment != null) {
            return fragmentTransitionImpl.mergeTransitionsTogether(obj2, obj, obj3);
        }
        return fragmentTransitionImpl.mergeTransitionsInSequence(obj2, obj, obj3);
    }

    public static void calculateFragments(BackStackRecord backStackRecord, SparseArray<FragmentContainerTransition> sparseArray, boolean z) {
        int size = backStackRecord.mOps.size();
        for (int i = 0; i < size; i++) {
            addToFirstInLastOut(backStackRecord, (Op) backStackRecord.mOps.get(i), sparseArray, false, z);
        }
    }

    public static void calculatePopFragments(BackStackRecord backStackRecord, SparseArray<FragmentContainerTransition> sparseArray, boolean z) {
        if (backStackRecord.mManager.mContainer.onHasView()) {
            for (int size = backStackRecord.mOps.size() - 1; size >= 0; size--) {
                addToFirstInLastOut(backStackRecord, (Op) backStackRecord.mOps.get(size), sparseArray, true, z);
            }
        }
    }

    static boolean supportsTransition() {
        if (PLATFORM_IMPL == null) {
            if (SUPPORT_IMPL == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void addToFirstInLastOut(android.support.v4.app.BackStackRecord r11, android.support.v4.app.BackStackRecord.Op r12, android.util.SparseArray<android.support.v4.app.FragmentTransition.FragmentContainerTransition> r13, boolean r14, boolean r15) {
        /*
        r6 = r12.fragment;
        if (r6 != 0) goto L_0x0005;
    L_0x0004:
        return;
    L_0x0005:
        r7 = r6.mContainerId;
        if (r7 != 0) goto L_0x000a;
    L_0x0009:
        return;
    L_0x000a:
        if (r14 == 0) goto L_0x0013;
    L_0x000c:
        r0 = INVERSE_OPS;
        r12 = r12.cmd;
        r12 = r0[r12];
        goto L_0x0015;
    L_0x0013:
        r12 = r12.cmd;
    L_0x0015:
        r0 = 0;
        r1 = 1;
        if (r12 == r1) goto L_0x0076;
    L_0x0019:
        switch(r12) {
            case 3: goto L_0x004c;
            case 4: goto L_0x0034;
            case 5: goto L_0x0021;
            case 6: goto L_0x004c;
            case 7: goto L_0x0076;
            default: goto L_0x001c;
        };
    L_0x001c:
        r12 = r0;
        r1 = r12;
        r8 = r1;
        goto L_0x0089;
    L_0x0021:
        if (r15 == 0) goto L_0x0030;
    L_0x0023:
        r12 = r6.mHiddenChanged;
        if (r12 == 0) goto L_0x0085;
    L_0x0027:
        r12 = r6.mHidden;
        if (r12 != 0) goto L_0x0085;
    L_0x002b:
        r12 = r6.mAdded;
        if (r12 == 0) goto L_0x0085;
    L_0x002f:
        goto L_0x0083;
    L_0x0030:
        r12 = r6.mHidden;
        goto L_0x0086;
    L_0x0034:
        if (r15 == 0) goto L_0x0043;
    L_0x0036:
        r12 = r6.mHiddenChanged;
        if (r12 == 0) goto L_0x0067;
    L_0x003a:
        r12 = r6.mAdded;
        if (r12 == 0) goto L_0x0067;
    L_0x003e:
        r12 = r6.mHidden;
        if (r12 == 0) goto L_0x0067;
    L_0x0042:
        goto L_0x0065;
    L_0x0043:
        r12 = r6.mAdded;
        if (r12 == 0) goto L_0x0067;
    L_0x0047:
        r12 = r6.mHidden;
        if (r12 != 0) goto L_0x0067;
    L_0x004b:
        goto L_0x0042;
    L_0x004c:
        if (r15 == 0) goto L_0x0069;
    L_0x004e:
        r12 = r6.mAdded;
        if (r12 != 0) goto L_0x0067;
    L_0x0052:
        r12 = r6.mView;
        if (r12 == 0) goto L_0x0067;
    L_0x0056:
        r12 = r6.mView;
        r12 = r12.getVisibility();
        if (r12 != 0) goto L_0x0067;
    L_0x005e:
        r12 = r6.mPostponedAlpha;
        r2 = 0;
        r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1));
        if (r12 < 0) goto L_0x0067;
    L_0x0065:
        r12 = r1;
        goto L_0x0072;
    L_0x0067:
        r12 = r0;
        goto L_0x0072;
    L_0x0069:
        r12 = r6.mAdded;
        if (r12 == 0) goto L_0x0067;
    L_0x006d:
        r12 = r6.mHidden;
        if (r12 != 0) goto L_0x0067;
    L_0x0071:
        goto L_0x0065;
    L_0x0072:
        r8 = r12;
        r12 = r1;
        r1 = r0;
        goto L_0x0089;
    L_0x0076:
        if (r15 == 0) goto L_0x007b;
    L_0x0078:
        r12 = r6.mIsNewlyAdded;
        goto L_0x0086;
    L_0x007b:
        r12 = r6.mAdded;
        if (r12 != 0) goto L_0x0085;
    L_0x007f:
        r12 = r6.mHidden;
        if (r12 != 0) goto L_0x0085;
    L_0x0083:
        r12 = r1;
        goto L_0x0086;
    L_0x0085:
        r12 = r0;
    L_0x0086:
        r8 = r0;
        r0 = r12;
        r12 = r8;
    L_0x0089:
        r2 = r13.get(r7);
        r2 = (android.support.v4.app.FragmentTransition.FragmentContainerTransition) r2;
        if (r0 == 0) goto L_0x009b;
    L_0x0091:
        r2 = ensureContainer(r2, r13, r7);
        r2.lastIn = r6;
        r2.lastInIsPop = r14;
        r2.lastInTransaction = r11;
    L_0x009b:
        r9 = r2;
        r10 = 0;
        if (r15 != 0) goto L_0x00c2;
    L_0x009f:
        if (r1 == 0) goto L_0x00c2;
    L_0x00a1:
        if (r9 == 0) goto L_0x00a9;
    L_0x00a3:
        r0 = r9.firstOut;
        if (r0 != r6) goto L_0x00a9;
    L_0x00a7:
        r9.firstOut = r10;
    L_0x00a9:
        r0 = r11.mManager;
        r1 = r6.mState;
        if (r1 > 0) goto L_0x00c2;
    L_0x00af:
        r1 = r0.mCurState;
        if (r1 <= 0) goto L_0x00c2;
    L_0x00b3:
        r1 = r11.mReorderingAllowed;
        if (r1 != 0) goto L_0x00c2;
    L_0x00b7:
        r0.makeActive(r6);
        r2 = 1;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r1 = r6;
        r0.moveToState(r1, r2, r3, r4, r5);
    L_0x00c2:
        if (r8 == 0) goto L_0x00d4;
    L_0x00c4:
        if (r9 == 0) goto L_0x00ca;
    L_0x00c6:
        r0 = r9.firstOut;
        if (r0 != 0) goto L_0x00d4;
    L_0x00ca:
        r9 = ensureContainer(r9, r13, r7);
        r9.firstOut = r6;
        r9.firstOutIsPop = r14;
        r9.firstOutTransaction = r11;
    L_0x00d4:
        if (r15 != 0) goto L_0x00e0;
    L_0x00d6:
        if (r12 == 0) goto L_0x00e0;
    L_0x00d8:
        if (r9 == 0) goto L_0x00e0;
    L_0x00da:
        r11 = r9.lastIn;
        if (r11 != r6) goto L_0x00e0;
    L_0x00de:
        r9.lastIn = r10;
    L_0x00e0:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentTransition.addToFirstInLastOut(android.support.v4.app.BackStackRecord, android.support.v4.app.BackStackRecord$Op, android.util.SparseArray, boolean, boolean):void");
    }

    private static FragmentContainerTransition ensureContainer(FragmentContainerTransition fragmentContainerTransition, SparseArray<FragmentContainerTransition> sparseArray, int i) {
        if (fragmentContainerTransition != null) {
            return fragmentContainerTransition;
        }
        fragmentContainerTransition = new FragmentContainerTransition();
        sparseArray.put(i, fragmentContainerTransition);
        return fragmentContainerTransition;
    }
}
