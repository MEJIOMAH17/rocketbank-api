package android.support.transition;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.util.SparseArray;
import android.view.View;

public final class Scene {
    final SparseArray<View> mIdValues = new SparseArray();
    final LongSparseArray<View> mItemIdValues = new LongSparseArray();
    final ArrayMap<String, View> mNameValues = new ArrayMap();
    final ArrayMap<View, TransitionValues> mViewValues = new ArrayMap();

    Scene() {
    }
}
