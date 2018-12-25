package rx.internal.operators;

import rx.Observable;
import rx.functions.Func2;
import rx.internal.util.UtilityFunctions;

public final class OperatorSequenceEqual {
    static final Object LOCAL_ON_COMPLETED = new Object();

    private OperatorSequenceEqual() {
        throw new IllegalStateException("No instances!");
    }

    static <T> Observable<Object> materializeLite(Observable<T> observable) {
        return Observable.concat(observable, Observable.just(LOCAL_ON_COMPLETED));
    }

    public static <T> Observable<Boolean> sequenceEqual(Observable<? extends T> observable, Observable<? extends T> observable2, final Func2<? super T, ? super T, Boolean> func2) {
        return Observable.zip(materializeLite(observable), materializeLite(observable2), new Func2<Object, Object, Boolean>() {
            public final Boolean call(Object obj, Object obj2) {
                Object obj3 = null;
                Object obj4 = obj == OperatorSequenceEqual.LOCAL_ON_COMPLETED ? 1 : null;
                if (obj2 == OperatorSequenceEqual.LOCAL_ON_COMPLETED) {
                    obj3 = 1;
                }
                if (obj4 != null && obj3 != null) {
                    return Boolean.TRUE;
                }
                if (obj4 == null) {
                    if (obj3 == null) {
                        return (Boolean) func2.call(obj, obj2);
                    }
                }
                return Boolean.FALSE;
            }
        }).all(UtilityFunctions.identity());
    }
}
