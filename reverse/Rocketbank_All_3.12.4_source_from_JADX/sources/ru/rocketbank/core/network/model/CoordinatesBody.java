package ru.rocketbank.core.network.model;

/* compiled from: CoordinatesBody.kt */
public final class CoordinatesBody {
    private double acc;
    private long id;
    private double lat;
    private double lng;

    public CoordinatesBody(float f, double d, double d2, long j) {
        this.lat = d;
        this.lng = d2;
        this.id = j;
        this.acc = (double) f;
    }

    public final long getId() {
        return this.id;
    }

    public final double getLat() {
        return this.lat;
    }

    public final double getLng() {
        return this.lng;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setLat(double d) {
        this.lat = d;
    }

    public final void setLng(double d) {
        this.lng = d;
    }

    public final double getAcc() {
        return this.acc;
    }

    public final void setAcc(double d) {
        this.acc = d;
    }
}
