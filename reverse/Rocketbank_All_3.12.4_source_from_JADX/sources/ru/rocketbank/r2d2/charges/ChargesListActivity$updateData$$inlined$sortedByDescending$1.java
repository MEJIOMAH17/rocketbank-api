package ru.rocketbank.r2d2.charges;

import java.util.Comparator;
import ru.rocketbank.core.model.charge.ChargeModel;

/* compiled from: Comparisons.kt */
public final class ChargesListActivity$updateData$$inlined$sortedByDescending$1<T> implements Comparator<T> {
    public final int compare(T t, T t2) {
        Comparable comparable;
        Comparable comparable2;
        t2 = ((ChargeModel) t2).getRequisites();
        Long l = null;
        if (t2 != null) {
            t2 = t2.getBill_date_calendar();
            if (t2 != null) {
                t2 = Long.valueOf(t2.getTimeInMillis());
                comparable = (Comparable) t2;
                t = ((ChargeModel) t).getRequisites();
                if (t != null) {
                    t = t.getBill_date_calendar();
                    if (t != null) {
                        l = Long.valueOf(t.getTimeInMillis());
                    }
                }
                comparable2 = l;
                if (comparable == comparable2) {
                    return null;
                }
                if (comparable == null) {
                    return -1;
                }
                return comparable2 != null ? 1 : comparable.compareTo(comparable2);
            }
        }
        t2 = null;
        comparable = (Comparable) t2;
        t = ((ChargeModel) t).getRequisites();
        if (t != null) {
            t = t.getBill_date_calendar();
            if (t != null) {
                l = Long.valueOf(t.getTimeInMillis());
            }
        }
        comparable2 = l;
        if (comparable == comparable2) {
            return null;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 != null) {
        }
    }
}
