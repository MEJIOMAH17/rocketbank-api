package com.nineoldandroids.view;

import com.nineoldandroids.animation.ValueAnimator;
import java.util.ArrayList;

class ViewPropertyAnimatorHC extends ViewPropertyAnimator {

    static class PropertyBundle {
        ArrayList<Object> mNameValuesHolder;
        int mPropertyMask = 0;

        PropertyBundle(ArrayList<Object> arrayList) {
            this.mNameValuesHolder = arrayList;
        }
    }

    static /* synthetic */ void access$100(ViewPropertyAnimatorHC viewPropertyAnimatorHC) {
        viewPropertyAnimatorHC = new float[1];
        int i = 0;
        viewPropertyAnimatorHC[0] = 1065353216;
        viewPropertyAnimatorHC = ValueAnimator.ofFloat(viewPropertyAnimatorHC);
        Object obj = null;
        ArrayList arrayList = (ArrayList) obj.clone();
        obj.clear();
        int size = arrayList.size();
        while (i < size) {
            arrayList.get(i);
            i++;
        }
        obj.put(viewPropertyAnimatorHC, new PropertyBundle(arrayList));
        viewPropertyAnimatorHC.addUpdateListener$71cd81c5();
        viewPropertyAnimatorHC.addListener$386121c3();
        viewPropertyAnimatorHC.start();
    }
}
