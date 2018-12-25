package ru.rocketbank.r2d2.registration;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.model.StatusResponseData;

/* compiled from: RegistrationStep.kt */
public final class RegistrationStep implements Parcelable, IEvent {
    public static final Creator<RegistrationStep> CREATOR = new RegistrationStep$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private int passportPageId;
    private int registrationPageId;
    private StatusResponseData statusResponseData;
    private Step step;

    /* compiled from: RegistrationStep.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: RegistrationStep.kt */
    public enum Step {
    }

    public final int describeContents() {
        return 0;
    }

    public final StatusResponseData getStatusResponseData() {
        return this.statusResponseData;
    }

    public final void setStatusResponseData(StatusResponseData statusResponseData) {
        this.statusResponseData = statusResponseData;
    }

    public final Step getStep() {
        return this.step;
    }

    public final void setStep(Step step) {
        this.step = step;
    }

    public final int getPassportPageId() {
        return this.passportPageId;
    }

    public final void setPassportPageId(int i) {
        this.passportPageId = i;
    }

    public final int getRegistrationPageId() {
        return this.registrationPageId;
    }

    public final void setRegistrationPageId(int i) {
        this.registrationPageId = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeParcelable((Parcelable) this.statusResponseData, 0);
        if (this.step == 0) {
            i = -1;
        } else {
            i = this.step;
            if (i == 0) {
                Intrinsics.throwNpe();
            }
            i = i.ordinal();
        }
        parcel.writeInt(i);
        parcel.writeInt(this.passportPageId);
        parcel.writeInt(this.registrationPageId);
    }

    protected RegistrationStep(Parcel parcel) {
        Step step;
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.statusResponseData = (StatusResponseData) parcel.readParcelable(StatusResponseData.class.getClassLoader());
        int readInt = parcel.readInt();
        if (readInt == -1) {
            step = null;
        } else {
            step = Step.values()[readInt];
        }
        this.step = step;
        this.passportPageId = parcel.readInt();
        this.registrationPageId = parcel.readInt();
    }
}
