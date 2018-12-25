package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Location.kt */
public final class Location implements Parcelable {
    public static final Creator<Location> CREATOR = new Location$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private Double accuracy;
    private Double latitude;
    private Double longitude;

    /* compiled from: Location.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ Location copy$default(Location location, Double d, Double d2, Double d3, int i, Object obj) {
        if ((i & 1) != 0) {
            d = location.latitude;
        }
        if ((i & 2) != 0) {
            d2 = location.longitude;
        }
        if ((i & 4) != 0) {
            d3 = location.accuracy;
        }
        return location.copy(d, d2, d3);
    }

    public final Double component1() {
        return this.latitude;
    }

    public final Double component2() {
        return this.longitude;
    }

    public final Double component3() {
        return this.accuracy;
    }

    public final Location copy(Double d, Double d2, Double d3) {
        return new Location(d, d2, d3);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Location) {
                Location location = (Location) obj;
                if (Intrinsics.areEqual(this.latitude, location.latitude) && Intrinsics.areEqual(this.longitude, location.longitude) && Intrinsics.areEqual(this.accuracy, location.accuracy)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Double d = this.latitude;
        int i = 0;
        int hashCode = (d != null ? d.hashCode() : 0) * 31;
        Double d2 = this.longitude;
        hashCode = (hashCode + (d2 != null ? d2.hashCode() : 0)) * 31;
        d2 = this.accuracy;
        if (d2 != null) {
            i = d2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Location(latitude=");
        stringBuilder.append(this.latitude);
        stringBuilder.append(", longitude=");
        stringBuilder.append(this.longitude);
        stringBuilder.append(", accuracy=");
        stringBuilder.append(this.accuracy);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Location(Double d, Double d2, Double d3) {
        this.latitude = d;
        this.longitude = d2;
        this.accuracy = d3;
    }

    public final Double getAccuracy() {
        return this.accuracy;
    }

    public final Double getLatitude() {
        return this.latitude;
    }

    public final Double getLongitude() {
        return this.longitude;
    }

    public final void setAccuracy(Double d) {
        this.accuracy = d;
    }

    public final void setLatitude(Double d) {
        this.latitude = d;
    }

    public final void setLongitude(Double d) {
        this.longitude = d;
    }

    protected Location(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this(Double.valueOf(parcel.readDouble()), Double.valueOf(parcel.readDouble()), Double.valueOf(parcel.readDouble()));
    }

    public final boolean isEmpty() {
        if (!(this.longitude == null || this.latitude == null || Intrinsics.areEqual$3bd129e3(this.longitude))) {
            if (!Intrinsics.areEqual$3bd129e3(this.latitude)) {
                return false;
            }
        }
        return true;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        double d;
        double d2 = 0.0d;
        if (parcel != null) {
            if (this.latitude == 0) {
                d = 0.0d;
            } else {
                i = this.latitude;
                if (i == 0) {
                    Intrinsics.throwNpe();
                }
                d = i.doubleValue();
            }
            parcel.writeDouble(d);
        }
        if (parcel != null) {
            if (this.longitude == 0) {
                d = 0.0d;
            } else {
                i = this.longitude;
                if (i == 0) {
                    Intrinsics.throwNpe();
                }
                d = i.doubleValue();
            }
            parcel.writeDouble(d);
        }
        if (parcel != null) {
            if (this.accuracy != 0) {
                i = this.accuracy;
                if (i == 0) {
                    Intrinsics.throwNpe();
                }
                d2 = i.doubleValue();
            }
            parcel.writeDouble(d2);
        }
    }
}
