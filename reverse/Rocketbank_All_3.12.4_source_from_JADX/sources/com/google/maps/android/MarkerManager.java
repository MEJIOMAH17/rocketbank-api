package com.google.maps.android;

import android.view.View;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.InfoWindowAdapter;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerDragListener;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class MarkerManager implements InfoWindowAdapter, OnInfoWindowClickListener, OnMarkerClickListener, OnMarkerDragListener {
    private final Map<Marker, Collection> mAllMarkers = new HashMap();
    private final GoogleMap mMap;
    private final Map<String, Collection> mNamedCollections = new HashMap();

    public class Collection {
        private OnInfoWindowClickListener mInfoWindowClickListener;
        private OnMarkerClickListener mMarkerClickListener;
        private final Set<Marker> mMarkers = new HashSet();

        private static double wrap$482004d7(double d) {
            return (d < -3.141592653589793d || d >= 3.141592653589793d) ? ((((d - -3.141592653589793d) % 6.283185307179586d) + 6.283185307179586d) % 6.283185307179586d) - 1.4292036732051034d : d;
        }

        public final Marker addMarker(MarkerOptions markerOptions) {
            markerOptions = MarkerManager.this.mMap.addMarker(markerOptions);
            this.mMarkers.add(markerOptions);
            MarkerManager.this.mAllMarkers.put(markerOptions, this);
            return markerOptions;
        }

        public final boolean remove(Marker marker) {
            if (!this.mMarkers.remove(marker)) {
                return null;
            }
            MarkerManager.this.mAllMarkers.remove(marker);
            marker.remove();
            return true;
        }

        public final void clear() {
            for (Marker marker : this.mMarkers) {
                marker.remove();
                MarkerManager.this.mAllMarkers.remove(marker);
            }
            this.mMarkers.clear();
        }

        public final void setOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) {
            this.mInfoWindowClickListener = onInfoWindowClickListener;
        }

        public final void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
            this.mMarkerClickListener = onMarkerClickListener;
        }

        public static boolean containsLocation$4399593d(LatLng latLng, List<LatLng> list) {
            LatLng latLng2 = latLng;
            int size = list.size();
            if (size == 0) {
                return false;
            }
            double toRadians = Math.toRadians(latLng2.latitude);
            double toRadians2 = Math.toRadians(latLng2.longitude);
            boolean z = true;
            LatLng latLng3 = (LatLng) list.get(size - 1);
            double toRadians3 = Math.toRadians(latLng3.latitude);
            double toRadians4 = Math.toRadians(latLng3.longitude);
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                LatLng latLng4 = (LatLng) it.next();
                double wrap$482004d7 = wrap$482004d7(toRadians2 - toRadians4);
                if (toRadians == toRadians3 && wrap$482004d7 == 0.0d) {
                    return z;
                }
                double d;
                double d2;
                double d3;
                Object obj;
                Iterator it2 = it;
                double toRadians5 = Math.toRadians(latLng4.latitude);
                double d4 = toRadians;
                double toRadians6 = Math.toRadians(latLng4.longitude);
                toRadians4 = wrap$482004d7(toRadians6 - toRadians4);
                if ((wrap$482004d7 < 0.0d || wrap$482004d7 < toRadians4) && (wrap$482004d7 >= 0.0d || wrap$482004d7 >= toRadians4)) {
                    if (d4 > -1.5707963267948966d) {
                        if (toRadians3 > -1.5707963267948966d && toRadians5 > -1.5707963267948966d && toRadians3 < 1.5707963267948966d) {
                            if (toRadians5 < 1.5707963267948966d) {
                                if (toRadians4 > -3.141592653589793d) {
                                    d = toRadians6;
                                    toRadians6 = toRadians4 - wrap$482004d7;
                                    double d5 = ((toRadians3 * toRadians6) + (toRadians5 * wrap$482004d7)) / toRadians4;
                                    if (toRadians3 < 0.0d || toRadians5 < 0.0d || d4 >= d5) {
                                        if (toRadians3 > 0.0d || toRadians5 > 0.0d || d4 < d5) {
                                            if (d4 < 1.5707963267948966d) {
                                                d2 = toRadians2;
                                                d3 = d4;
                                                if (Math.tan(d3) >= ((Math.tan(toRadians3) * Math.sin(toRadians6)) + (Math.tan(toRadians5) * Math.sin(wrap$482004d7))) / Math.sin(toRadians4)) {
                                                    obj = 1;
                                                    if (obj != null) {
                                                        i++;
                                                    }
                                                    toRadians3 = toRadians5;
                                                    toRadians = d3;
                                                    it = it2;
                                                    toRadians4 = d;
                                                    toRadians2 = d2;
                                                    z = true;
                                                }
                                                obj = null;
                                                if (obj != null) {
                                                    i++;
                                                }
                                                toRadians3 = toRadians5;
                                                toRadians = d3;
                                                it = it2;
                                                toRadians4 = d;
                                                toRadians2 = d2;
                                                z = true;
                                            }
                                        }
                                        d2 = toRadians2;
                                        d3 = d4;
                                        obj = 1;
                                        if (obj != null) {
                                            i++;
                                        }
                                        toRadians3 = toRadians5;
                                        toRadians = d3;
                                        it = it2;
                                        toRadians4 = d;
                                        toRadians2 = d2;
                                        z = true;
                                    }
                                    d2 = toRadians2;
                                    d3 = d4;
                                    obj = null;
                                    if (obj != null) {
                                        i++;
                                    }
                                    toRadians3 = toRadians5;
                                    toRadians = d3;
                                    it = it2;
                                    toRadians4 = d;
                                    toRadians2 = d2;
                                    z = true;
                                }
                            }
                        }
                    }
                    d = toRadians6;
                    d2 = toRadians2;
                    d3 = d4;
                    obj = null;
                    if (obj != null) {
                        i++;
                    }
                    toRadians3 = toRadians5;
                    toRadians = d3;
                    it = it2;
                    toRadians4 = d;
                    toRadians2 = d2;
                    z = true;
                }
                d = toRadians6;
                d2 = toRadians2;
                d3 = d4;
                obj = null;
                if (obj != null) {
                    i++;
                }
                toRadians3 = toRadians5;
                toRadians = d3;
                it = it2;
                toRadians4 = d;
                toRadians2 = d2;
                z = true;
            }
            return (i & 1) != 0 ? z : false;
        }
    }

    public MarkerManager(GoogleMap googleMap) {
        this.mMap = googleMap;
    }

    public final View getInfoWindow(Marker marker) {
        this.mAllMarkers.get(marker);
        return null;
    }

    public final View getInfoContents(Marker marker) {
        this.mAllMarkers.get(marker);
        return null;
    }

    public final void onInfoWindowClick(Marker marker) {
        Collection collection = (Collection) this.mAllMarkers.get(marker);
        if (collection != null && collection.mInfoWindowClickListener != null) {
            collection.mInfoWindowClickListener.onInfoWindowClick(marker);
        }
    }

    public final boolean onMarkerClick(Marker marker) {
        Collection collection = (Collection) this.mAllMarkers.get(marker);
        return (collection == null || collection.mMarkerClickListener == null) ? null : collection.mMarkerClickListener.onMarkerClick(marker);
    }

    public final void onMarkerDragStart(Marker marker) {
        this.mAllMarkers.get(marker);
    }

    public final void onMarkerDrag(Marker marker) {
        this.mAllMarkers.get(marker);
    }

    public final void onMarkerDragEnd(Marker marker) {
        this.mAllMarkers.get(marker);
    }

    public final boolean remove(Marker marker) {
        Collection collection = (Collection) this.mAllMarkers.get(marker);
        return (collection == null || collection.remove(marker) == null) ? null : true;
    }
}
