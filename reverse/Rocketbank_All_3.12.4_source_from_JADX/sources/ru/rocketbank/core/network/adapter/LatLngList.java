package ru.rocketbank.core.network.adapter;

import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;

/* compiled from: LatLngListDeserializer.kt */
public final class LatLngList extends ArrayList<LatLng> {
    public LatLngList(int i) {
        super(i);
    }

    public final /* bridge */ boolean contains(LatLng latLng) {
        return super.contains(latLng);
    }

    public final /* bridge */ boolean contains(Object obj) {
        return !(obj instanceof LatLng) ? null : contains((LatLng) obj);
    }

    public final /* bridge */ int getSize() {
        return super.size();
    }

    public final /* bridge */ int indexOf(LatLng latLng) {
        return super.indexOf(latLng);
    }

    public final /* bridge */ int indexOf(Object obj) {
        return !(obj instanceof LatLng) ? -1 : indexOf((LatLng) obj);
    }

    public final /* bridge */ int lastIndexOf(LatLng latLng) {
        return super.lastIndexOf(latLng);
    }

    public final /* bridge */ int lastIndexOf(Object obj) {
        return !(obj instanceof LatLng) ? -1 : lastIndexOf((LatLng) obj);
    }

    public final /* bridge */ LatLng remove(int i) {
        return removeAt(i);
    }

    public final /* bridge */ boolean remove(LatLng latLng) {
        return super.remove(latLng);
    }

    public final /* bridge */ boolean remove(Object obj) {
        return !(obj instanceof LatLng) ? null : remove((LatLng) obj);
    }

    public final /* bridge */ LatLng removeAt(int i) {
        return (LatLng) super.remove(i);
    }

    public final /* bridge */ int size() {
        return getSize();
    }
}
