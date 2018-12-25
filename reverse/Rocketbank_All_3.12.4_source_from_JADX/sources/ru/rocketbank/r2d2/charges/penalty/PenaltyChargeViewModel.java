package ru.rocketbank.r2d2.charges.penalty;

import android.databinding.Bindable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.regex.Pattern;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: PenaltyChargePaymentDetailsFragment.kt */
public final class PenaltyChargeViewModel extends ViewModelObservable implements Parcelable {
    public static final Creator<PenaltyChargeViewModel> CREATOR = new PenaltyChargeViewModel$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final ViewField ctc;
    private final ViewField driver_licence;
    private Boolean iKnowNum;
    private final Pattern regexp;
    private final ViewField uin;

    /* compiled from: PenaltyChargePaymentDetailsFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public PenaltyChargeViewModel() {
        Pattern compile = Pattern.compile("^([0-9A-Za-zА-Яа-я](?:.{19}|.{24}))$");
        Intrinsics.checkExpressionValueIsNotNull(compile, "Pattern.compile(\"^([0-9A…-Яа-я](?:.{19}|.{24}))$\")");
        this.regexp = compile;
        ViewModelObservable.putField$default(this, "ctc", 23, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                Boolean iKnowNum = this.getIKnowNum();
                if (iKnowNum == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
                }
                if (!iKnowNum.booleanValue()) {
                    if (str.length() != 10) {
                        return null;
                    }
                }
                return true;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "driver_licence", 29, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                Boolean iKnowNum = this.getIKnowNum();
                if (iKnowNum == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
                }
                if (!iKnowNum.booleanValue()) {
                    if (str.length() != 10) {
                        return null;
                    }
                }
                return true;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "uin", 87, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                Boolean iKnowNum = this.getIKnowNum();
                if (iKnowNum == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
                }
                if (iKnowNum.booleanValue()) {
                    if (this.regexp.matcher(str).matches() == null) {
                        return null;
                    }
                }
                return true;
            }
        }, 4, null);
        this.iKnowNum = Boolean.FALSE;
        this.ctc = getField("ctc");
        this.driver_licence = getField("driver_licence");
        this.uin = getField("uin");
    }

    @Bindable
    public final Boolean getIKnowNum() {
        return this.iKnowNum;
    }

    public final void setIKnowNum(Boolean bool) {
        this.iKnowNum = bool;
        notifyPropertyChanged(42);
        notifyPropertyChanged(23);
        notifyPropertyChanged(29);
        notifyPropertyChanged(87);
    }

    @Bindable
    public final ViewField getCtc() {
        return this.ctc;
    }

    @Bindable
    public final ViewField getDriver_licence() {
        return this.driver_licence;
    }

    @Bindable
    public final ViewField getUin() {
        return this.uin;
    }

    public final void check() {
        if (!getFields().isEmpty()) {
            Boolean bool = this.iKnowNum;
            if (bool == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
            }
            boolean booleanValue = bool.booleanValue();
            boolean z = true;
            ViewField viewField;
            if (!booleanValue) {
                viewField = this.ctc;
                if (!(viewField != null ? viewField.getValid() : false)) {
                    viewField = this.driver_licence;
                    if (viewField != null ? viewField.getValid() : false) {
                    }
                }
                setValid(z);
                getValidSubject().onNext(Boolean.valueOf(isValid()));
            } else if (booleanValue) {
                viewField = this.uin;
                if (viewField != null) {
                    z = viewField.getValid();
                    setValid(z);
                    getValidSubject().onNext(Boolean.valueOf(isValid()));
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
            z = false;
            setValid(z);
            getValidSubject().onNext(Boolean.valueOf(isValid()));
        }
    }

    public PenaltyChargeViewModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this();
        ViewField viewField = this.ctc;
        if (viewField != null) {
            viewField.setValue(parcel.readString());
        }
        viewField = this.driver_licence;
        if (viewField != null) {
            viewField.setValue(parcel.readString());
        }
        viewField = this.uin;
        if (viewField != null) {
            viewField.setValue(parcel.readString());
        }
        boolean z = true;
        if (parcel.readInt() != 1) {
            z = false;
        }
        setIKnowNum(Boolean.valueOf(z));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = 0;
        if (parcel != null) {
            ViewField viewField = this.ctc;
            parcel.writeString(viewField != null ? viewField.getValue() : null);
        }
        if (parcel != null) {
            viewField = this.driver_licence;
            parcel.writeString(viewField != null ? viewField.getValue() : null);
        }
        if (parcel != null) {
            viewField = this.uin;
            if (viewField != null) {
                i = viewField.getValue();
            }
            parcel.writeString(i);
        }
        if (parcel != null) {
            parcel.writeInt(Intrinsics.areEqual(this.iKnowNum, Boolean.TRUE));
        }
    }
}
