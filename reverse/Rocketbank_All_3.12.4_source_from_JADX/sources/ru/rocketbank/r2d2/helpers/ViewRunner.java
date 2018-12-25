package ru.rocketbank.r2d2.helpers;

import android.view.View;
import java.util.ArrayList;

public final class ViewRunner {
    public static void set(final Runnable runnable, View... viewArr) {
        final ArrayList arrayList = new ArrayList(viewArr.length);
        for (View view : viewArr) {
            if (view != null) {
                Runnable c15991 = new Runnable() {
                    public final void run() {
                        arrayList.remove(this);
                        if (arrayList.size() == 0) {
                            runnable.run();
                        }
                    }
                };
                arrayList.add(c15991);
                view.post(c15991);
            }
        }
    }
}
