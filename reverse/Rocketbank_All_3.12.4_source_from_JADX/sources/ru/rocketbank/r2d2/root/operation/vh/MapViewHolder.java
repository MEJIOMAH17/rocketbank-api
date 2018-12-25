package ru.rocketbank.r2d2.root.operation.vh;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.content.ContextCompat;
import android.util.TypedValue;
import android.view.View;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Friend;
import ru.rocketbank.core.model.dto.operations.Location;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.LayoutOperationMapBinding;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import rx.Subscriber;

/* compiled from: MapViewHolder.kt */
public final class MapViewHolder extends GenericViewHolder implements OnMapReadyCallback, MapHandler {
    private final CommonOperationData adapterData;
    private GoogleMap googleMap;
    private final MapView mapView;
    private Operation operation;
    private Bitmap pinBitmap;

    public MapViewHolder(View view, CommonOperationData commonOperationData) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(commonOperationData, "adapterData");
        super(view);
        this.adapterData = commonOperationData;
        view = LayoutOperationMapBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "binding");
        view.setHandler(this);
        view = view.map;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.map");
        this.mapView = view;
        this.mapView.onCreate(null);
    }

    public final CommonOperationData getAdapterData() {
        return this.adapterData;
    }

    public final void onZoomIn() {
        CommonOperationData commonOperationData = this.adapterData;
        commonOperationData.setZoomLevel(commonOperationData.getZoomLevel() + 1.0f);
        onZoomChanged();
    }

    public final void onZoomOut() {
        CommonOperationData commonOperationData = this.adapterData;
        commonOperationData.setZoomLevel(commonOperationData.getZoomLevel() - 4.0f);
        onZoomChanged();
    }

    public final void onZoomChanged() {
        GoogleMap googleMap = this.googleMap;
        if (googleMap != null) {
            Operation operation = this.operation;
            if (operation != null) {
                float zoomLevel = this.adapterData.getZoomLevel();
                Location location = operation.getLocation();
                if (location != null) {
                    Double latitude = location.getLatitude();
                    if (latitude == null) {
                        Intrinsics.throwNpe();
                    }
                    double doubleValue = latitude.doubleValue();
                    Double longitude = location.getLongitude();
                    if (longitude == null) {
                        Intrinsics.throwNpe();
                    }
                    googleMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(doubleValue, longitude.doubleValue()), zoomLevel));
                }
            }
        }
    }

    public final void onBind(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        if (this.googleMap == null) {
            this.mapView.getMapAsync(this);
        }
        this.operation = operation;
        onBindOperation(operation);
    }

    private final void onBindOperation(Operation operation) {
        operation = operation.getLocation();
        if (operation != null) {
            showLocation(operation);
        }
    }

    public final void onMapReady(GoogleMap googleMap) {
        Intrinsics.checkParameterIsNotNull(googleMap, "googleMap");
        UiSettings uiSettings = googleMap.getUiSettings();
        Intrinsics.checkExpressionValueIsNotNull(uiSettings, "googleMap.uiSettings");
        uiSettings.setMapToolbarEnabled(false);
        uiSettings = googleMap.getUiSettings();
        Intrinsics.checkExpressionValueIsNotNull(uiSettings, "googleMap.uiSettings");
        uiSettings.setMyLocationButtonEnabled(false);
        uiSettings = googleMap.getUiSettings();
        Intrinsics.checkExpressionValueIsNotNull(uiSettings, "googleMap.uiSettings");
        uiSettings.setIndoorLevelPickerEnabled(false);
        this.googleMap = googleMap;
        googleMap = this.operation;
        if (googleMap != null) {
            onBindOperation(googleMap);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void showLocation(ru.rocketbank.core.model.dto.operations.Location r8) {
        /*
        r7 = this;
        r0 = r7.adapterData;
        r0 = r0.getZoomLevel();
        r1 = r7.googleMap;
        if (r1 == 0) goto L_0x006e;
    L_0x000a:
        r1.clear();
        r2 = new com.google.android.gms.maps.model.LatLng;
        r3 = r8.getLatitude();
        if (r3 != 0) goto L_0x0018;
    L_0x0015:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0018:
        r3 = r3.doubleValue();
        r8 = r8.getLongitude();
        if (r8 != 0) goto L_0x0025;
    L_0x0022:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0025:
        r5 = r8.doubleValue();
        r2.<init>(r3, r5);
        r8 = r7.pinBitmap;
        if (r8 == 0) goto L_0x0036;
    L_0x0030:
        r8 = com.google.android.gms.maps.model.BitmapDescriptorFactory.fromBitmap(r8);
        if (r8 != 0) goto L_0x0042;
    L_0x0036:
        r8 = 2131231221; // 0x7f0801f5 float:1.8078517E38 double:1.0529681296E-314;
        r8 = com.google.android.gms.maps.model.BitmapDescriptorFactory.fromResource(r8);
        r3 = "BitmapDescriptorFactory.….drawable.pin_categories)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r3);
    L_0x0042:
        r3 = new com.google.android.gms.maps.model.MarkerOptions;
        r3.<init>();
        r3 = r3.position(r2);
        r8 = r3.icon(r8);
        r3 = r7.operation;
        if (r3 == 0) goto L_0x005e;
    L_0x0053:
        r3 = r3.getMerchant();
        if (r3 == 0) goto L_0x005e;
    L_0x0059:
        r3 = r3.getName();
        goto L_0x005f;
    L_0x005e:
        r3 = 0;
    L_0x005f:
        r8 = r8.title(r3);
        r1.addMarker(r8);
        r8 = com.google.android.gms.maps.CameraUpdateFactory.newLatLngZoom(r2, r0);
        r1.moveCamera(r8);
        return;
    L_0x006e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.operation.vh.MapViewHolder.showLocation(ru.rocketbank.core.model.dto.operations.Location):void");
    }

    private final void setupHeaderImage(Operation operation) {
        Friend friend = operation.getFriend();
        String str = null;
        if (friend != null) {
            operation = friend.getUserpicUrl();
            if (operation != null) {
                loadImageIntoPin(operation);
                return;
            } else {
                loadImageIntoPin(null);
                return;
            }
        }
        if (operation.getMerchant() != null) {
            Merchant merchant = operation.getMerchant();
            if ((merchant != null ? merchant.getIcon() : null) != null) {
                operation = operation.getMerchant();
                if (operation != null) {
                    str = operation.getIcon();
                }
                loadImageIntoPin(str);
                return;
            }
        }
        loadImageIntoPin(null);
    }

    private final void loadImageIntoPin(String str) {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Context context = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
        float applyDimension = TypedValue.applyDimension(1, 3.0f, resources.getDisplayMetrics());
        View view2 = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
        BitmapDrawable bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(view2.getContext(), C0859R.drawable.pin_categories);
        if (str != null) {
            if ((((CharSequence) str).length() == 0 ? 1 : 0) == 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(C0859R.dimen.operation_pin_logo_size);
                Glide.with(context).load(str).asBitmap().fitCenter().override(dimensionPixelSize, dimensionPixelSize).transform(new Transformation[]{new CropCircleTransformation(context)}).into(new MapViewHolder$loadImageIntoPin$3(this, applyDimension));
                return;
            }
        }
        str = null;
        Bitmap bitmap = bitmapDrawable != null ? bitmapDrawable.getBitmap() : null;
        if (bitmap != null) {
            str = createPin(bitmap, applyDimension, applyDimension);
        }
        this.pinBitmap = str;
        str = this.operation;
        if (str != null) {
            str = str.getLocation();
            if (str != null) {
                showLocation(str);
            }
        }
    }

    public final Bitmap createPin(Bitmap bitmap, float f, float f2) {
        Intrinsics.checkParameterIsNotNull(bitmap, "bitmapSource");
        Paint paint = new Paint();
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        BitmapDrawable bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(view.getContext(), C0859R.drawable.pin_categories);
        if (bitmapDrawable == null) {
            Intrinsics.throwNpe();
        }
        Bitmap bitmap2 = bitmapDrawable.getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap2, "pinBitmap");
        int width = bitmap2.getWidth();
        int height = bitmap2.getHeight();
        View view2 = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
        Context context = view2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C0859R.dimen.operation_pin_logo_size) / 2;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        TileMode tileMode = TileMode.CLAMP;
        paint2.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        bitmap2 = bitmap2.copy(Config.ARGB_8888, true);
        Canvas canvas = new Canvas(bitmap2);
        canvas.drawBitmap(bitmap, f, f2, paint);
        f = (float) dimensionPixelSize;
        canvas.drawRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) width, (float) height), f, f, paint2);
        bitmap = bitmap2.copy(Config.ARGB_8888, BitmapDescriptorFactory.HUE_RED);
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "mutableBitmap.copy(Bitmap.Config.ARGB_8888, false)");
        return bitmap;
    }

    private final Subscriber<Bitmap> subscribeLocation() {
        return new MapViewHolder$subscribeLocation$1(this);
    }
}
