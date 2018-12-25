package ru.rocketbank.core.network.model.delivery;

/* compiled from: Coordinate.kt */
public final class Coordinate {
    private final float lat;
    private final float lng;

    public static /* bridge */ /* synthetic */ Coordinate copy$default(Coordinate coordinate, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = coordinate.lat;
        }
        if ((i & 2) != 0) {
            f2 = coordinate.lng;
        }
        return coordinate.copy(f, f2);
    }

    public final float component1() {
        return this.lat;
    }

    public final float component2() {
        return this.lng;
    }

    public final Coordinate copy(float f, float f2) {
        return new Coordinate(f, f2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Coordinate) {
                Coordinate coordinate = (Coordinate) obj;
                if (Float.compare(this.lat, coordinate.lat) == 0 && Float.compare(this.lng, coordinate.lng) == 0) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.lat) * 31) + Float.floatToIntBits(this.lng);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Coordinate(lat=");
        stringBuilder.append(this.lat);
        stringBuilder.append(", lng=");
        stringBuilder.append(this.lng);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Coordinate(float f, float f2) {
        this.lat = f;
        this.lng = f2;
    }

    public final float getLat() {
        return this.lat;
    }

    public final float getLng() {
        return this.lng;
    }
}
