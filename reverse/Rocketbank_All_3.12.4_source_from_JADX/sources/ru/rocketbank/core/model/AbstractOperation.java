package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.gson.annotations.SerializedName;
import java.util.Calendar;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AbstractOperation.kt */
public class AbstractOperation implements Parcelable, Comparable<AbstractOperation> {
    public static final Creator<AbstractOperation> CREATOR = new AbstractOperation$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private Calendar calendarInstance;
    @SerializedName("happened_at")
    private long happenedAt;
    private long id;
    @SerializedName("visible")
    private boolean isVisible = true;

    /* compiled from: AbstractOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public int describeContents() {
        return 0;
    }

    public final boolean isVisible() {
        return this.isVisible;
    }

    public final void setVisible(boolean z) {
        this.isVisible = z;
    }

    public final long getHappenedAt() {
        return this.happenedAt;
    }

    public final void setHappenedAt(long j) {
        this.happenedAt = j;
    }

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    protected AbstractOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        boolean z = true;
        if (parcel.readByte() == (byte) 0) {
            z = false;
        }
        this.isVisible = z;
        this.happenedAt = parcel.readLong();
        this.id = parcel.readLong();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AbstractOperation) && ((AbstractOperation) obj).id == this.id) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (int) this.id;
    }

    public final Calendar getCalendarInstance() {
        return this.calendarInstance;
    }

    public final void setCalendarInstance(Calendar calendar) {
        this.calendarInstance = calendar;
    }

    private final Calendar createNewCalendar() {
        Calendar calendar;
        if (this.calendarInstance != null) {
            calendar = this.calendarInstance;
            if (calendar == null) {
                Intrinsics.throwNpe();
            }
            return calendar;
        }
        calendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
        calendar.setTimeInMillis(this.happenedAt * 1000);
        this.calendarInstance = calendar;
        return calendar;
    }

    public final Calendar getHappenedAtCalendar() {
        return createNewCalendar();
    }

    public int compareTo(AbstractOperation abstractOperation) {
        Intrinsics.checkParameterIsNotNull(abstractOperation, FacebookRequestErrorClassification.KEY_OTHER);
        return (int) (this.happenedAt - abstractOperation.happenedAt);
    }

    public final void setId(int i) {
        this.id = (long) i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeByte((byte) this.isVisible);
            parcel.writeLong(this.happenedAt);
            parcel.writeLong(this.id);
        }
    }
}
