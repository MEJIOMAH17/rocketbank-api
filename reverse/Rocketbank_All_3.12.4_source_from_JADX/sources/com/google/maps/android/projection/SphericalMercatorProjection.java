package com.google.maps.android.projection;

import android.support.v7.appcompat.C0219R.color;
import com.google.android.gms.maps.model.LatLng;

public final class SphericalMercatorProjection {
    final double mWorldWidth;

    public SphericalMercatorProjection(double d) {
        this.mWorldWidth = d;
    }

    public final Point toPoint(LatLng latLng) {
        double d = (latLng.longitude / 360.0d) + 0.5d;
        double sin = Math.sin(Math.toRadians(latLng.latitude));
        return new Point(d * this.mWorldWidth, (((Math.log((sin + 1.0d) / (1.0d - sin)) * 0.5d) / -6.283185307179586d) + 0.5d) * this.mWorldWidth);
    }

    public final LatLng toLatLng$d83856a(color color) {
        return new LatLng(90.0d - Math.toDegrees(Math.atan(Math.exp(((-(0.5d - (color.f6y / this.mWorldWidth))) * 2.0d) * 3.141592653589793d)) * 2.0d), ((color.f5x / this.mWorldWidth) - 0.5d) * 360.0d);
    }
}
