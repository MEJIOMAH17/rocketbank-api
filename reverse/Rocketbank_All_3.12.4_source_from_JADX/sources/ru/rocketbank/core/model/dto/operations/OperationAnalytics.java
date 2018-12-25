package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OperationAnalytics.kt */
public final class OperationAnalytics implements Parcelable {
    public static final Creator<OperationAnalytics> CREATOR = new OperationAnalytics$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private CategoryAnalytics category;
    private MerchantAnalytics merchant;

    /* compiled from: OperationAnalytics.kt */
    public static final class CategoryAnalytics implements Parcelable {
        public static final Creator<CategoryAnalytics> CREATOR = new OperationAnalytics$CategoryAnalytics$Companion$CREATOR$1();
        public static final Companion Companion = new Companion();
        @SerializedName("per_day")
        private final float[] perDay;

        /* compiled from: OperationAnalytics.kt */
        public static final class Companion {
            private Companion() {
            }
        }

        public final int describeContents() {
            return 0;
        }

        protected CategoryAnalytics(Parcel parcel) {
            Intrinsics.checkParameterIsNotNull(parcel, "in");
            parcel = parcel.createFloatArray();
            Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.createFloatArray()");
            this.perDay = parcel;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            Intrinsics.checkParameterIsNotNull(parcel, "dest");
            parcel.writeFloatArray(this.perDay);
        }
    }

    /* compiled from: OperationAnalytics.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: OperationAnalytics.kt */
    public static final class MerchantAnalytics implements Parcelable {
        public static final Creator<MerchantAnalytics> CREATOR = new OperationAnalytics$MerchantAnalytics$Companion$CREATOR$1();
        public static final Companion Companion = new Companion();
        @SerializedName("current_month")
        private final double currentMonth;
        private ArrayList<Float> months = new ArrayList();
        @SerializedName("previous_month")
        private final double previousMonth;
        @SerializedName("total")
        private final float total;

        /* compiled from: OperationAnalytics.kt */
        public static final class Companion {
            private Companion() {
            }
        }

        public final int describeContents() {
            return 0;
        }

        protected MerchantAnalytics(Parcel parcel) {
            Intrinsics.checkParameterIsNotNull(parcel, "in");
            this.currentMonth = parcel.readDouble();
            this.previousMonth = parcel.readDouble();
            this.total = parcel.readFloat();
            parcel = parcel.createFloatArray();
            if (parcel != null) {
                for (float valueOf : parcel) {
                    ArrayList arrayList = this.months;
                    if (arrayList == null) {
                        Intrinsics.throwNpe();
                    }
                    arrayList.add(Float.valueOf(valueOf));
                }
            }
        }

        public final double getCurrentMonth() {
            return this.currentMonth;
        }

        public final double getPreviousMonth() {
            return this.previousMonth;
        }

        public final float getTotal() {
            return this.total;
        }

        public final ArrayList<Float> getMonths() {
            return this.months;
        }

        public final void setMonths(ArrayList<Float> arrayList) {
            this.months = arrayList;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            Intrinsics.checkParameterIsNotNull(parcel, "dest");
            parcel.writeDouble(this.currentMonth);
            parcel.writeDouble(this.previousMonth);
            parcel.writeFloat(this.total);
            if (this.months != 0) {
                i = this.months;
                if (i == 0) {
                    Intrinsics.throwNpe();
                }
                i = new float[i.size()];
                ArrayList arrayList = this.months;
                if (arrayList == null) {
                    Intrinsics.throwNpe();
                }
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ArrayList arrayList2 = this.months;
                    if (arrayList2 == null) {
                        Intrinsics.throwNpe();
                    }
                    Object obj = arrayList2.get(i2);
                    Intrinsics.checkExpressionValueIsNotNull(obj, "months!![i]");
                    i[i2] = ((Number) obj).floatValue();
                }
            } else {
                i = 0;
            }
            parcel.writeFloatArray(i);
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected OperationAnalytics(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        Parcelable readParcelable = parcel.readParcelable(MerchantAnalytics.class.getClassLoader());
        Intrinsics.checkExpressionValueIsNotNull(readParcelable, "`in`.readParcelable<Merc…::class.java.classLoader)");
        this.merchant = (MerchantAnalytics) readParcelable;
        parcel = parcel.readParcelable(CategoryAnalytics.class.getClassLoader());
        Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.readParcelable<Cate…::class.java.classLoader)");
        this.category = (CategoryAnalytics) parcel;
    }

    public final MerchantAnalytics getMerchant() {
        return this.merchant;
    }

    public final void setMerchant(MerchantAnalytics merchantAnalytics) {
        Intrinsics.checkParameterIsNotNull(merchantAnalytics, "<set-?>");
        this.merchant = merchantAnalytics;
    }

    public final CategoryAnalytics getCategory() {
        return this.category;
    }

    public final void setCategory(CategoryAnalytics categoryAnalytics) {
        Intrinsics.checkParameterIsNotNull(categoryAnalytics, "<set-?>");
        this.category = categoryAnalytics;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeParcelable(this.merchant, i);
        parcel.writeParcelable(this.category, i);
    }
}
