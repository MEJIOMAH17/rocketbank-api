package com.nineoldandroids.view;

import com.nineoldandroids.animation.ValueAnimator;
import java.util.ArrayList;

class ViewPropertyAnimatorPreHC extends ViewPropertyAnimator {

    static class PropertyBundle {
        ArrayList<Object> mNameValuesHolder;
        int mPropertyMask = 0;

        PropertyBundle(ArrayList<Object> arrayList) {
            this.mNameValuesHolder = arrayList;
        }
    }

    static /* synthetic */ void access$100(ViewPropertyAnimatorPreHC viewPropertyAnimatorPreHC) {
        viewPropertyAnimatorPreHC = new float[1];
        int i = 0;
        viewPropertyAnimatorPreHC[0] = 1065353216;
        viewPropertyAnimatorPreHC = ValueAnimator.ofFloat(viewPropertyAnimatorPreHC);
        Object obj = null;
        ArrayList arrayList = (ArrayList) obj.clone();
        obj.clear();
        int size = arrayList.size();
        while (i < size) {
            arrayList.get(i);
            i++;
        }
        obj.put(viewPropertyAnimatorPreHC, new PropertyBundle(arrayList));
        viewPropertyAnimatorPreHC.addUpdateListener$71cd81c5();
        viewPropertyAnimatorPreHC.addListener$386121c3();
        viewPropertyAnimatorPreHC.start();
    }
}
