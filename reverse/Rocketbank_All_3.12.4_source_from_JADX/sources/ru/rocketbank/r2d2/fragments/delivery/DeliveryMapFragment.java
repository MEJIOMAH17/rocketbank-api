package ru.rocketbank.r2d2.fragments.delivery;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.data.binding.ButtonAddressListener;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import ru.rocketbank.core.widgets.RocketAddressView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.delivery.AddressesAdapter;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryMapData;
import ru.rocketbank.r2d2.databinding.FragmentDeliveryMapBinding;
import ru.rocketbank.r2d2.fragments.delivery.DeliveryMapView.DefaultImpls;

/* compiled from: DeliveryMapFragment.kt */
public final class DeliveryMapFragment extends AbstractMapFragment<DeliveryMapView, DeliveryMapPresenter> implements ObservableScrollViewCallbacks, ButtonAddressListener, DeliveryMapView {
    public static final Companion Companion = new Companion();
    private static final long INPUT_TIMEOUT = 1000;
    private static final int LOCATION_REQUEST = 9282;
    private HashMap _$_findViewCache;
    private AddressesAdapter adapter;
    private String addressTextForRequest;
    private RocketAddressView addressView;
    private final AddressWatcher addressWatcher = new AddressWatcher();
    private FragmentDeliveryMapBinding binding;
    private final DeliveryMapData data = new DeliveryMapData();
    private ObservableRecyclerView recyclerView;
    private ImageView userImageView;

    /* compiled from: DeliveryMapFragment.kt */
    public final class AddressWatcher implements TextWatcher {
        private Timer timer;

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(charSequence, ProviderField.TEXT);
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(charSequence, ProviderField.TEXT);
        }

        public final void afterTextChanged(Editable editable) {
            Intrinsics.checkParameterIsNotNull(editable, "edit");
            DeliveryMapFragment.this.addressTextForRequest = editable.toString();
            resetTimer();
            if (DeliveryMapFragment.access$getAddressView$p(DeliveryMapFragment.this).isError() != null) {
                DeliveryMapFragment.access$getAddressView$p(DeliveryMapFragment.this).reset();
            }
        }

        private final void resetTimer() {
            Timer timer = this.timer;
            if (timer != null) {
                timer.cancel();
                timer.purge();
            }
            this.timer = new Timer();
            timer = this.timer;
            if (timer == null) {
                Intrinsics.throwNpe();
            }
            timer.schedule(new FindAddressTask(), DeliveryMapFragment.INPUT_TIMEOUT);
        }
    }

    /* compiled from: DeliveryMapFragment.kt */
    public static final class Companion {
        private static /* synthetic */ void INPUT_TIMEOUT$annotations() {
        }

        private static /* synthetic */ void LOCATION_REQUEST$annotations() {
        }

        private Companion() {
        }

        public final DeliveryMapFragment newInstance(String str) {
            Intrinsics.checkParameterIsNotNull(str, "deliveryToken");
            DeliveryMapFragment deliveryMapFragment = new DeliveryMapFragment();
            AbstractDeliveryFragment.Companion.setArguments(deliveryMapFragment, str);
            return deliveryMapFragment;
        }
    }

    /* compiled from: DeliveryMapFragment.kt */
    public final class FindAddressTask extends TimerTask {
        public final void run() {
            ((DeliveryMapPresenter) DeliveryMapFragment.this.getPresenter()).searchAddress(DeliveryMapFragment.access$getAddressTextForRequest$p(DeliveryMapFragment.this));
        }
    }

    public static final DeliveryMapFragment newInstance(String str) {
        return Companion.newInstance(str);
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
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

    public final int getTitleResID() {
        return C0859R.string.place;
    }

    public final void onDownMotionEvent() {
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
        Intrinsics.checkParameterIsNotNull(scrollState, "scrollState");
    }

    public static final /* synthetic */ String access$getAddressTextForRequest$p(DeliveryMapFragment deliveryMapFragment) {
        deliveryMapFragment = deliveryMapFragment.addressTextForRequest;
        if (deliveryMapFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressTextForRequest");
        }
        return deliveryMapFragment;
    }

    public static final /* synthetic */ RocketAddressView access$getAddressView$p(DeliveryMapFragment deliveryMapFragment) {
        deliveryMapFragment = deliveryMapFragment.addressView;
        if (deliveryMapFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        return deliveryMapFragment;
    }

    public final DeliveryMapPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("2c82d5f4-c5be-44d3-be61-476b0623f2d1");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"2c82d5f…-44d3-be61-476b0623f2d1\")");
        return (DeliveryMapPresenter) PresenterManager.getOrCreatePresenter(fromString, DeliveryMapPresenter.class);
    }

    public final android.view.View onCreateView(android.view.LayoutInflater r3, android.view.ViewGroup r4, android.os.Bundle r5) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = "inflater";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = r2.getPresenter();
        r0 = (ru.rocketbank.r2d2.fragments.delivery.DeliveryMapPresenter) r0;
        r0.onCreate(r5);
        r0 = r2.getPresenter();
        r0 = (ru.rocketbank.r2d2.fragments.delivery.DeliveryMapPresenter) r0;
        r1 = r2.getToken();
        r0.loadDelivery(r1);
        r0 = 0;
        r3 = ru.rocketbank.r2d2.databinding.FragmentDeliveryMapBinding.inflate(r3, r4, r0);
        r4 = "FragmentDeliveryMapBindi…flater, container, false)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r2.binding = r3;
        r3 = r2.binding;
        if (r3 != 0) goto L_0x0030;
    L_0x002b:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x0030:
        r4 = r2.data;
        r3.setData(r4);
        r3 = r2.binding;
        if (r3 != 0) goto L_0x003e;
    L_0x0039:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x003e:
        r4 = r2.getPresenter();
        r4 = (ru.rocketbank.r2d2.data.binding.delivery.MapLocationListener) r4;
        r3.setListener(r4);
        r3 = r2.binding;
        if (r3 != 0) goto L_0x0050;
    L_0x004b:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x0050:
        r3 = r3.markerImg;
        r4 = "binding.markerImg";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r2.setMarkerImg(r3);
        r3 = r2.binding;
        if (r3 != 0) goto L_0x0063;
    L_0x005e:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x0063:
        r3 = r3.mapView;
        r4 = "binding.mapView";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r2.setMapView(r3);
        r3 = r2.binding;
        if (r3 != 0) goto L_0x0076;
    L_0x0071:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x0076:
        r3 = r3.addressView;
        r4 = "binding.addressView";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r2.addressView = r3;
        r3 = r2.binding;
        if (r3 != 0) goto L_0x0088;
    L_0x0083:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x0088:
        r3 = r3.markerImg;
        r4 = "binding.markerImg";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r2.userImageView = r3;
        r3 = r2.binding;
        if (r3 != 0) goto L_0x009a;
    L_0x0095:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x009a:
        r3 = r3.addressesList;
        r4 = "binding.addressesList";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r2.recyclerView = r3;
        r3 = r2.getMarkerImg();
        r3 = (android.view.View) r3;
        r2.setPivotMarkerView(r3);
        r3 = r2.recyclerView;
        if (r3 != 0) goto L_0x00b5;
    L_0x00b0:
        r4 = "recyclerView";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x00b5:
        r4 = new android.support.v7.widget.LinearLayoutManager;
        r0 = r2.getContext();
        r4.<init>(r0);
        r4 = (android.support.v7.widget.RecyclerView.LayoutManager) r4;
        r3.setLayoutManager(r4);
        r3 = new ru.rocketbank.r2d2.adapters.delivery.AddressesAdapter;
        r4 = r2.getPresenter();
        r4 = (ru.rocketbank.r2d2.data.binding.delivery.AddressClickListener) r4;
        r3.<init>(r4);
        r2.adapter = r3;
        r3 = r2.recyclerView;
        if (r3 != 0) goto L_0x00d9;
    L_0x00d4:
        r4 = "recyclerView";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x00d9:
        r4 = r2.adapter;
        if (r4 != 0) goto L_0x00e2;
    L_0x00dd:
        r0 = "adapter";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0);
    L_0x00e2:
        r4 = (android.support.v7.widget.RecyclerView.Adapter) r4;
        r3.setAdapter(r4);
        r3 = r2.getMapView();	 Catch:{ Throwable -> 0x00ef }
        r3.onCreate(r5);	 Catch:{ Throwable -> 0x00ef }
        goto L_0x00f7;
    L_0x00ef:
        r3 = r2.getMapView();
        r4 = 0;
        r3.onCreate(r4);
    L_0x00f7:
        r3 = r2.binding;
        if (r3 != 0) goto L_0x0100;
    L_0x00fb:
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x0100:
        r3 = r3.getRoot();
        r4 = "binding.root";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.delivery.DeliveryMapFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        view = this.addressView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        view.addTextWatcher((TextWatcher) this.addressWatcher);
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        if (z) {
            KeyboardUtil.hideKeyboard(getActivity());
        }
    }

    public final void onStart() {
        super.onStart();
        ((DeliveryMapPresenter) getPresenter()).onStart(this);
        RocketAddressView rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.setListener(this);
        ObservableRecyclerView observableRecyclerView = this.recyclerView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        observableRecyclerView.setScrollViewCallbacks(this);
    }

    public final void onStop() {
        super.onStop();
        ((DeliveryMapPresenter) getPresenter()).onStop();
        RocketAddressView rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.setListener(null);
        ObservableRecyclerView observableRecyclerView = this.recyclerView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        observableRecyclerView.setScrollViewCallbacks(null);
    }

    public final void onPause() {
        super.onPause();
        ((DeliveryMapPresenter) getPresenter()).onPause();
    }

    public final void onDestroyView() {
        super.onDestroyView();
        ((DeliveryMapPresenter) getPresenter()).onDestroy();
        _$_clearFindViewByIdCache();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        try {
            getMapView().onSaveInstanceState(bundle);
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
        }
        super.onSaveInstanceState(bundle);
    }

    public final void initMap() {
        getMapView().getMapAsync((OnMapReadyCallback) getPresenter());
        DeliveryMapPresenter deliveryMapPresenter = (DeliveryMapPresenter) getPresenter();
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        deliveryMapPresenter.checkLocationEnabled(context);
    }

    public final void onLocationChecked() {
        this.data.getMyLocationHidden().set(false);
    }

    public final void onLocationNotChecked() {
        Context context = getContext();
        this.data.getMyLocationHidden().set(true);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        AlertDialog create = new Builder(context).setMessage(C0859R.string.location_disabled_message).setTitle(C0859R.string.title_location_access).setCancelable$184cab27().setPositiveButton(17039370, new DeliveryMapFragment$onLocationNotChecked$dialog$1(this)).setNegativeButton(17039360, new DeliveryMapFragment$onLocationNotChecked$dialog$2(this)).create();
        create.show();
        create.getButton(-1).setTextColor(ContextCompat.getColor(context, C0859R.color.orange_variant_2));
        create.getButton(-2).setTextColor(ContextCompat.getColor(context, C0859R.color.gray));
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == LOCATION_REQUEST) {
            DeliveryMapPresenter deliveryMapPresenter = (DeliveryMapPresenter) getPresenter();
            i2 = getContext();
            if (i2 == 0) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(i2, "context!!");
            deliveryMapPresenter.checkLocationEnabled(i2);
        }
    }

    public final void setCommentStatus() {
        RocketAddressView rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.setCommentMode();
        rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.removeTextWatcher(this.addressWatcher);
        AddressesAdapter addressesAdapter = this.adapter;
        if (addressesAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        addressesAdapter.swap(null);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Object systemService = context.getSystemService("input_method");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        RocketAddressView rocketAddressView2 = this.addressView;
        if (rocketAddressView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        inputMethodManager.showSoftInput(rocketAddressView2.getEditText(), 1);
    }

    public final void showAddressError() {
        RocketAddressView rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.setAddressError();
        AddressesAdapter addressesAdapter = this.adapter;
        if (addressesAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        addressesAdapter.swap(null);
    }

    public final void setAddressStatus() {
        RocketAddressView rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.setAddressMode();
        rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.addTextWatcher(this.addressWatcher);
    }

    public final void updateAddressesList(ArrayList<GeoObject> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "addresses");
        AddressesAdapter addressesAdapter = this.adapter;
        if (addressesAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        addressesAdapter.swap(arrayList);
    }

    public final void onCameraIdle() {
        ((DeliveryMapPresenter) getPresenter()).onCameraIdle(getMarkerDownX(), getMarkerDownY());
        KeyboardUtil.hideKeyboard(getActivity());
    }

    public final void onNextClicked(boolean z) {
        if (z) {
            DeliveryMapPresenter deliveryMapPresenter = (DeliveryMapPresenter) getPresenter();
            RocketAddressView rocketAddressView = this.addressView;
            if (rocketAddressView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("addressView");
            }
            deliveryMapPresenter.checkAddress(rocketAddressView.getText());
            return;
        }
        KeyboardUtil.hideKeyboard(getActivity());
        deliveryMapPresenter = (DeliveryMapPresenter) getPresenter();
        String token = getToken();
        RocketAddressView rocketAddressView2 = this.addressView;
        if (rocketAddressView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        deliveryMapPresenter.onCommentClicked(token, rocketAddressView2.getText());
    }

    public final void onBackToAddressClicked() {
        ((DeliveryMapPresenter) getPresenter()).onBackToAddressClicked();
    }

    public final void updateAddress(String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "address");
        RocketAddressView rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.removeTextWatcher(this.addressWatcher);
        rocketAddressView = this.addressView;
        if (rocketAddressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        rocketAddressView.setText(str);
        str = this.addressView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        str.addTextWatcher(this.addressWatcher);
        str = this.addressView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressView");
        }
        if (str.isError() != null && z) {
            str = this.addressView;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("addressView");
            }
            str.reset();
        }
    }

    public final void showSelectedAddress(String str) {
        Intrinsics.checkParameterIsNotNull(str, "address");
        DefaultImpls.updateAddress$default(this, str, false, 2, null);
        str = this.adapter;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        str.swap(null);
    }

    public final void selectDate() {
        nextStep(2);
    }
}
