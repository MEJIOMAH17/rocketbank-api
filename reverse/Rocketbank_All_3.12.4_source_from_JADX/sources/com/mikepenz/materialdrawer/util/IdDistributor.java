package com.mikepenz.materialdrawer.util;

import com.mikepenz.materialdrawer.model.interfaces.Identifyable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class IdDistributor {
    private static AtomicInteger idDistributor = new AtomicInteger(2000000000);

    public static <T extends Identifyable> ArrayList<T> checkIds(ArrayList<T> arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Identifyable identifyable = (Identifyable) it.next();
            if (identifyable.getIdentifier() == -1) {
                identifyable.withIdentifier(idDistributor.incrementAndGet());
            }
        }
        return arrayList;
    }

    public static <T extends Identifyable> T[] checkIds(T... tArr) {
        for (Identifyable identifyable : tArr) {
            if (identifyable.getIdentifier() == -1) {
                identifyable.withIdentifier(idDistributor.incrementAndGet());
            }
        }
        return tArr;
    }
}
