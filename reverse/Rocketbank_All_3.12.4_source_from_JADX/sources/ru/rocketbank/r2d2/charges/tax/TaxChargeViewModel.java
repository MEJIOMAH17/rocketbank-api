package ru.rocketbank.r2d2.charges.tax;

import android.databinding.Bindable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: TaxChargePaymentDetailsFragment.kt */
public final class TaxChargeViewModel extends ViewModelObservable implements Parcelable {
    public static final Creator<TaxChargeViewModel> CREATOR = new TaxChargeViewModel$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final ViewField inn;

    /* compiled from: TaxChargePaymentDetailsFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: TaxChargePaymentDetailsFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.charges.tax.TaxChargeViewModel$1 */
    static final class C17421 extends Lambda implements Function1<String, Boolean> {
        public static final C17421 INSTANCE = new C17421();

        C17421() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return str.length() == 12 ? true : null;
        }
    }

    public final int describeContents() {
        return 0;
    }

    public TaxChargeViewModel() {
        ViewModelObservable.putField$default(this, "inn", 46, null, C17421.INSTANCE, 4, null);
        this.inn = getField("inn");
    }

    @Bindable
    public final ViewField getInn() {
        return this.inn;
    }

    public TaxChargeViewModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this();
        ViewField viewField = this.inn;
        if (viewField != null) {
            viewField.setValue(parcel.readString());
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            i = this.inn;
            parcel.writeString(i != 0 ? i.getValue() : 0);
        }
    }
}
