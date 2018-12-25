package ru.rocketbank.r2d2.utils;

import android.databinding.BaseObservable;
import android.databinding.Bindable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.sequences.Sequence;
import kotlin.sequences.TransformingSequence;
import rx.Observable;
import rx.subjects.PublishSubject;

/* compiled from: ViewModelObservable.kt */
public abstract class ViewModelObservable extends BaseObservable {
    private final HashMap<String, ViewField> fields = new HashMap();
    private boolean isValid;
    private final Observable<Boolean> validObservable;
    private final PublishSubject<Boolean> validSubject;

    /* compiled from: ViewModelObservable.kt */
    public static final class DelegateObservable<T> {
        private final BaseObservable baseObservable;
        private final int brFieldId;
        private T value;

        public DelegateObservable(int i, BaseObservable baseObservable) {
            Intrinsics.checkParameterIsNotNull(baseObservable, "baseObservable");
            this.brFieldId = i;
            this.baseObservable = baseObservable;
        }

        public final T getValue() {
            return this.value;
        }

        public final void setValue(T t) {
            this.value = t;
        }

        public final T getValue(Object obj, KProperty<?> kProperty) {
            Intrinsics.checkParameterIsNotNull(kProperty, "property");
            return this.value;
        }

        public final void setValue(Object obj, KProperty<?> kProperty, T t) {
            Intrinsics.checkParameterIsNotNull(kProperty, "property");
            this.value = t;
            if (t != null) {
                this.baseObservable.notifyPropertyChanged(this.brFieldId);
            }
        }
    }

    /* compiled from: ViewModelObservable.kt */
    public static final class ViewField extends BaseObservable {
        static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(ViewField.class), "value", "getValue()Ljava/lang/String;"))};
        private Function1<? super String, Boolean> checker;
        private final Function1<String, String> cleaner;
        private PublishSubject<Boolean> lazyValidObservable;
        private boolean valid;
        private final DelegateObservable value$delegate;
        private final TextWatcherAbstract watcher = ((TextWatcherAbstract) new ViewModelObservable$ViewField$watcher$1(this));

        @Bindable
        public final String getValue() {
            return (String) this.value$delegate.getValue(this, $$delegatedProperties[0]);
        }

        public final void setValue(String str) {
            this.value$delegate.setValue(this, $$delegatedProperties[0], str);
        }

        public final Function1<String, Boolean> getChecker() {
            return this.checker;
        }

        public final void setChecker(Function1<? super String, Boolean> function1) {
            Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
            this.checker = function1;
        }

        public ViewField(BaseObservable baseObservable, int i, Function1<? super String, Boolean> function1, Function1<? super String, String> function12) {
            Intrinsics.checkParameterIsNotNull(baseObservable, "baseObservable");
            Intrinsics.checkParameterIsNotNull(function1, "checker");
            Intrinsics.checkParameterIsNotNull(function12, "cleaner");
            this.checker = function1;
            this.cleaner = function12;
            this.value$delegate = new DelegateObservable(i, baseObservable);
            setValue(null);
        }

        public final Function1<String, String> getCleaner() {
            return this.cleaner;
        }

        public final PublishSubject<Boolean> getValidObservable() {
            if (this.lazyValidObservable == null) {
                this.lazyValidObservable = PublishSubject.create();
            }
            PublishSubject<Boolean> publishSubject = this.lazyValidObservable;
            if (publishSubject == null) {
                Intrinsics.throwNpe();
            }
            return publishSubject;
        }

        public final String getCleanValue() {
            return (String) this.cleaner.invoke(getValue());
        }

        public final void setValid(boolean z) {
            this.valid = z;
        }

        @Bindable
        public final boolean getValid() {
            return ((Boolean) this.checker.invoke(getCleanValue())).booleanValue();
        }

        public final TextWatcherAbstract getWatcher() {
            return this.watcher;
        }
    }

    public ViewModelObservable() {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "PublishSubject.create<Boolean>()");
        this.validSubject = create;
        Observable onBackpressureDrop = this.validSubject.onBackpressureDrop();
        Intrinsics.checkExpressionValueIsNotNull(onBackpressureDrop, "validSubject.onBackpressureDrop()");
        this.validObservable = onBackpressureDrop;
    }

    public final boolean isValid() {
        return this.isValid;
    }

    protected final void setValid(boolean z) {
        this.isValid = z;
    }

    public final PublishSubject<Boolean> getValidSubject() {
        return this.validSubject;
    }

    public final Observable<Boolean> getValidObservable() {
        return this.validObservable;
    }

    public final HashMap<String, ViewField> getFields() {
        return this.fields;
    }

    public void check() {
        boolean z;
        Collection values = this.fields.values();
        Intrinsics.checkExpressionValueIsNotNull(values, "fields.values");
        Sequence asSequence = CollectionsKt.asSequence(values);
        Function1 function1 = ViewModelObservable$check$1.INSTANCE;
        Intrinsics.checkParameterIsNotNull(asSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Iterator it = new TransformingSequence(asSequence, function1).iterator();
        boolean z2;
        do {
            z = false;
            z2 = true;
            if (!it.hasNext()) {
                z = true;
                break;
            } else if (((Boolean) it.next()).booleanValue()) {
                continue;
            } else {
                z2 = false;
                continue;
            }
        } while (z2);
        this.isValid = z;
        this.validSubject.onNext(Boolean.valueOf(this.isValid));
    }

    public void notifyPropertyChanged(int i) {
        super.notifyPropertyChanged(i);
        check();
    }

    public static /* bridge */ /* synthetic */ ViewField putField$default(ViewModelObservable viewModelObservable, String str, int i, Function1 function1, Function1 function12, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: putField");
        }
        if ((i2 & 4) != null) {
            function1 = ViewModelObservable$putField$1.INSTANCE;
        }
        if ((i2 & 8) != 0) {
            function12 = ViewModelObservable$putField$2.INSTANCE;
        }
        return viewModelObservable.putField(str, i, function1, function12);
    }

    protected final ViewField putField(String str, int i, Function1<? super String, String> function1, Function1<? super String, Boolean> function12) {
        Intrinsics.checkParameterIsNotNull(str, "key");
        Intrinsics.checkParameterIsNotNull(function1, "cleaner");
        Intrinsics.checkParameterIsNotNull(function12, "checker");
        return (ViewField) this.fields.put(str, new ViewField(this, i, function12, function1));
    }

    public final ViewField getField(String str) {
        Intrinsics.checkParameterIsNotNull(str, "key");
        return (ViewField) this.fields.get(str);
    }
}
