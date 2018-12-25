package ru.rocketbank.r2d2.fragments.delivery;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.maps.MapView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import ru.rocketbank.r2d2.root.delivery.DeliveryActivity;

/* compiled from: AbstractMapFragment.kt */
public abstract class AbstractMapFragment<V extends MapViewInterface, PR extends MapPresenter<V>> extends AbstractDeliveryFragment<PR> implements MapViewInterface {
    public static final Companion Companion = new Companion();
    private static final int PERMISSION_REQUEST = 5678;
    private HashMap _$_findViewCache;
    protected MapView mapView;
    private int markerDownX;
    private int markerDownY;
    protected ImageView markerImg;
    protected View pivotMarkerView;

    /* compiled from: AbstractMapFragment.kt */
    public static final class Companion {
        private static /* synthetic */ void PERMISSION_REQUEST$annotations() {
        }

        private Companion() {
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    protected final MapView getMapView() {
        MapView mapView = this.mapView;
        if (mapView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapView");
        }
        return mapView;
    }

    protected final void setMapView(MapView mapView) {
        Intrinsics.checkParameterIsNotNull(mapView, "<set-?>");
        this.mapView = mapView;
    }

    protected final ImageView getMarkerImg() {
        ImageView imageView = this.markerImg;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("markerImg");
        }
        return imageView;
    }

    protected final void setMarkerImg(ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.markerImg = imageView;
    }

    protected final View getPivotMarkerView() {
        View view = this.pivotMarkerView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pivotMarkerView");
        }
        return view;
    }

    protected final void setPivotMarkerView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.pivotMarkerView = view;
    }

    protected final int getMarkerDownX() {
        return this.markerDownX;
    }

    protected final void setMarkerDownX(int i) {
        this.markerDownX = i;
    }

    protected final int getMarkerDownY() {
        return this.markerDownY;
    }

    protected final void setMarkerDownY(int i) {
        this.markerDownY = i;
    }

    public void onResume() {
        super.onResume();
        MapView mapView = this.mapView;
        if (mapView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapView");
        }
        mapView.onResume();
    }

    public void onPause() {
        super.onPause();
        MapView mapView = this.mapView;
        if (mapView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapView");
        }
        mapView.onPause();
        ((MapPresenter) getPresenter()).onPause();
    }

    public void onStart() {
        super.onStart();
        ((MapPresenter) getPresenter()).onStart(this);
    }

    public void onLowMemory() {
        super.onLowMemory();
        MapView mapView = this.mapView;
        if (mapView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapView");
        }
        mapView.onLowMemory();
    }

    public void onDestroyView() {
        super.onDestroyView();
        MapView mapView = this.mapView;
        if (mapView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapView");
        }
        mapView.onDestroy();
        _$_clearFindViewByIdCache();
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        bundle = this.pivotMarkerView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pivotMarkerView");
        }
        bundle = bundle.getViewTreeObserver();
        Intrinsics.checkExpressionValueIsNotNull(bundle, "viewTreeObserver");
        if (bundle.isAlive()) {
            bundle.addOnGlobalLayoutListener(new AbstractMapFragment$onViewCreated$1(this, view));
        }
    }

    protected void initMarkerCoordinates() {
        int[] iArr = new int[2];
        View view = this.pivotMarkerView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pivotMarkerView");
        }
        view.getLocationInWindow(iArr);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.root.delivery.DeliveryActivity");
        }
        ActionBar supportActionBar = ((DeliveryActivity) activity).getSupportActionBar();
        int height = supportActionBar != null ? supportActionBar.getHeight() : 0;
        int i = iArr[0];
        View view2 = this.pivotMarkerView;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pivotMarkerView");
        }
        this.markerDownX = i + (view2.getWidth() / 2);
        int i2 = iArr[1];
        View view3 = this.pivotMarkerView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pivotMarkerView");
        }
        this.markerDownY = ((i2 + view3.getHeight()) - getStatusBarHeight()) - height;
    }

    public void checkPermissions(List<String> list) {
        Intrinsics.checkParameterIsNotNull(list, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        int size = list.size();
        IntRange access$getEMPTY$cp;
        if (size <= Integer.MIN_VALUE) {
            kotlin.ranges.IntRange.Companion companion = IntRange.Companion;
            access$getEMPTY$cp = IntRange.access$getEMPTY$cp();
        } else {
            access$getEMPTY$cp = new IntRange(0, size - 1);
        }
        Collection arrayList = new ArrayList();
        for (Object next : r0) {
            int intValue = ((Number) next).intValue();
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            if ((ActivityCompat.checkSelfPermission((Context) activity, (String) list.get(intValue)) == 0 ? 1 : 0) != 0) {
                arrayList.add(next);
            }
        }
        for (Number intValue2 : (List) arrayList) {
            list.remove(intValue2.intValue());
        }
        if (!list.isEmpty()) {
            list = list.toArray(new String[0]);
            if (list == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            requestPermissions((String[]) list, PERMISSION_REQUEST);
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        String[] strArr2 = 1;
        for (int i2 : iArr) {
            strArr2 = (strArr2 == null || i2 != 0) ? 0 : 1;
        }
        if (strArr2 != null) {
            ((MapPresenter) getPresenter()).onPermissionsGranted();
        }
    }

    public void showToast(int i) {
        Toast.makeText(getContext(), i, 0).show();
    }

    public void showToast(String str) {
        Intrinsics.checkParameterIsNotNull(str, NotificationCompat.CATEGORY_MESSAGE);
        Toast.makeText(getContext(), str, 0).show();
    }
}
