package ru.rocketbank.r2d2.fragments.refill;

import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.Intent;
import android.databinding.ObservableField;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetBehavior.BottomSheetCallback;
import android.support.design.widget.CoordinatorLayout.LayoutParams;
import android.support.v7.widget.SwitchCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import com.getkeepsafe.relinker.ReLinker;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.realm.RealmAtm;
import ru.rocketbank.r2d2.data.binding.MapActionListener;
import ru.rocketbank.r2d2.data.binding.MapData;
import ru.rocketbank.r2d2.databinding.AtmsMapFragmentBinding;
import ru.rocketbank.r2d2.fragments.refill.cash.AtmType;
import ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment;

/* compiled from: RefillCashFragment.kt */
public final class RefillCashFragment extends ClusterMapFragment implements MapActionListener {
    public static final Companion Companion = new Companion();
    private static final String TAG = "CashFragment";
    private HashMap _$_findViewCache;
    private BottomSheetBehavior<View> behavior;
    private AtmsMapFragmentBinding binding;
    private int currentHeight;
    private LayoutParams fabParams;
    private MapData mapData;
    private boolean nowShowing;
    private Marker selectedMarker;
    private UserModel userModel;

    /* compiled from: RefillCashFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return RefillCashFragment.TAG;
        }
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

    public final double getDefaultLatitude() {
        return 55.75d;
    }

    public final double getDefaultLongitude() {
        return 37.6167d;
    }

    protected final String getLatitudeColumnName() {
        return "lat";
    }

    protected final String getLongitudeColumnName() {
        return "lon";
    }

    protected final String getTitleColumnName() {
        return "name";
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ BottomSheetBehavior access$getBehavior$p(RefillCashFragment refillCashFragment) {
        refillCashFragment = refillCashFragment.behavior;
        if (refillCashFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("behavior");
        }
        return refillCashFragment;
    }

    public static final /* synthetic */ AtmsMapFragmentBinding access$getBinding$p(RefillCashFragment refillCashFragment) {
        refillCashFragment = refillCashFragment.binding;
        if (refillCashFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return refillCashFragment;
    }

    public static final /* synthetic */ LayoutParams access$getFabParams$p(RefillCashFragment refillCashFragment) {
        refillCashFragment = refillCashFragment.fabParams;
        if (refillCashFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabParams");
        }
        return refillCashFragment;
    }

    public static final /* synthetic */ MapData access$getMapData$p(RefillCashFragment refillCashFragment) {
        refillCashFragment = refillCashFragment.mapData;
        if (refillCashFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        return refillCashFragment;
    }

    public final UserModel getUserModel() {
        return this.userModel;
    }

    public final void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    protected final String[] getTypes() {
        boolean haveCommissionInMkb;
        Object[] toArray;
        List arrayList = new ArrayList();
        UserModel userModel = this.userModel;
        boolean isMkbWorks = userModel != null ? userModel.isMkbWorks() : false;
        UserModel userModel2 = this.userModel;
        int i = 1;
        if (userModel2 != null) {
            Account activeAccount = userModel2.getActiveAccount();
            if (activeAccount != null) {
                AccountModel accountModel = activeAccount.getAccountModel();
                if (accountModel != null) {
                    TariffModel currentTariff = accountModel.getCurrentTariff();
                    if (currentTariff != null) {
                        haveCommissionInMkb = currentTariff.getHaveCommissionInMkb();
                        if (!haveCommissionInMkb) {
                            i = 0;
                        }
                        if (isMkbWorks) {
                            AtmsMapFragmentBinding atmsMapFragmentBinding;
                            SwitchCompat switchCompat;
                            atmsMapFragmentBinding = this.binding;
                            if (atmsMapFragmentBinding == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            }
                            switchCompat = atmsMapFragmentBinding.commissionAtmsSwitcher;
                            Intrinsics.checkExpressionValueIsNotNull(switchCompat, "binding.commissionAtmsSwitcher");
                            if (switchCompat.isChecked()) {
                                arrayList.add(AtmType.INSTANCE.getMKB_WITH_COMMISSION());
                                arrayList.add(AtmType.INSTANCE.getMKB_ATM_WITH_COMMISSION());
                                toArray = arrayList.toArray(new String[0]);
                                if (toArray != null) {
                                    return (String[]) toArray;
                                }
                                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                            }
                        }
                        arrayList.add(AtmType.INSTANCE.getOPENBANK_ATM());
                        arrayList.add(AtmType.INSTANCE.getOPENBANK_OFFICE());
                        if (isMkbWorks && r4 != 0) {
                            arrayList.add(AtmType.INSTANCE.getMKB_WITH_COMMISSION());
                            arrayList.add(AtmType.INSTANCE.getMKB_ATM_WITH_COMMISSION());
                        }
                        toArray = arrayList.toArray(new String[0]);
                        if (toArray != null) {
                            return (String[]) toArray;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
            }
        }
        haveCommissionInMkb = true;
        if (!haveCommissionInMkb) {
            i = 0;
        }
        if (isMkbWorks) {
            atmsMapFragmentBinding = this.binding;
            if (atmsMapFragmentBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            switchCompat = atmsMapFragmentBinding.commissionAtmsSwitcher;
            Intrinsics.checkExpressionValueIsNotNull(switchCompat, "binding.commissionAtmsSwitcher");
            if (switchCompat.isChecked()) {
                arrayList.add(AtmType.INSTANCE.getMKB_WITH_COMMISSION());
                arrayList.add(AtmType.INSTANCE.getMKB_ATM_WITH_COMMISSION());
                toArray = arrayList.toArray(new String[0]);
                if (toArray != null) {
                    return (String[]) toArray;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        }
        arrayList.add(AtmType.INSTANCE.getOPENBANK_ATM());
        arrayList.add(AtmType.INSTANCE.getOPENBANK_OFFICE());
        arrayList.add(AtmType.INSTANCE.getMKB_WITH_COMMISSION());
        arrayList.add(AtmType.INSTANCE.getMKB_ATM_WITH_COMMISSION());
        toArray = arrayList.toArray(new String[0]);
        if (toArray != null) {
            return (String[]) toArray;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public final void navigateMe(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Marker marker = this.selectedMarker;
        if (marker != null) {
            double d = marker.getPosition().latitude;
            double d2 = marker.getPosition().longitude;
            StringBuilder stringBuilder = new StringBuilder("google.navigation:q=");
            stringBuilder.append(d);
            stringBuilder.append(',');
            stringBuilder.append(d2);
            stringBuilder.append("&mode=d");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(stringBuilder.toString()));
            intent.setPackage("com.google.android.apps.maps");
            view = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(view, "view.context");
            if (intent.resolveActivity(view.getPackageManager()) != null) {
                startActivity(intent);
            }
        }
    }

    public final void onMarkerSelected(com.google.android.gms.maps.model.Marker r3) {
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
        super.onMarkerSelected(r3);
        r2.deselectMarker();
        r2.selectedMarker = r3;
        if (r3 == 0) goto L_0x001e;
    L_0x000a:
        r0 = r3.getTag();	 Catch:{ Throwable -> 0x001e }
        r0 = (com.getkeepsafe.relinker.ReLinker) r0;	 Catch:{ Throwable -> 0x001e }
        if (r0 == 0) goto L_0x001d;	 Catch:{ Throwable -> 0x001e }
    L_0x0012:
        r1 = r2.renderer;	 Catch:{ Throwable -> 0x001e }
        r0 = r1.getSelectedMarkerIcon$12b7fc29(r0);	 Catch:{ Throwable -> 0x001e }
        if (r0 == 0) goto L_0x001d;	 Catch:{ Throwable -> 0x001e }
    L_0x001a:
        r3.setIcon(r0);	 Catch:{ Throwable -> 0x001e }
    L_0x001d:
        return;
    L_0x001e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.refill.RefillCashFragment.onMarkerSelected(com.google.android.gms.maps.model.Marker):void");
    }

    private final void deselectMarker() {
        Marker marker = this.selectedMarker;
        if (marker != null) {
            this.selectedMarker = null;
            ReLinker reLinker = (ReLinker) marker.getTag();
            if (reLinker != null) {
                BitmapDescriptor unselectedMarkerIcon$12b7fc29 = this.renderer.getUnselectedMarkerIcon$12b7fc29(reLinker);
                if (unselectedMarkerIcon$12b7fc29 != null) {
                    marker.setIcon(unselectedMarkerIcon$12b7fc29);
                }
            }
        }
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.userModel = userModel;
        Account activeAccount = userModel.getActiveAccount();
        if (userModel.isMkbWorks() != null) {
            boolean haveCommissionInMkb;
            userModel = this.mapData;
            if (userModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapData");
            }
            userModel = userModel.getCommissionAtmsSwitcherVisible();
            if (activeAccount != null) {
                AccountModel accountModel = activeAccount.getAccountModel();
                if (accountModel != null) {
                    TariffModel currentTariff = accountModel.getCurrentTariff();
                    if (currentTariff != null) {
                        haveCommissionInMkb = currentTariff.getHaveCommissionInMkb();
                        userModel.set(haveCommissionInMkb);
                    }
                }
            }
            haveCommissionInMkb = true;
            userModel.set(haveCommissionInMkb);
        } else {
            userModel = this.mapData;
            if (userModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapData");
            }
            userModel.getCommissionAtmsSwitcherVisible().set(false);
        }
        updateMap();
    }

    protected final void onLocationChanged(Location location) {
        MapData mapData = this.mapData;
        if (mapData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        mapData.getShowMyLocation().set(location != null ? true : null);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        this.mapData = new MapData();
        bundle = null;
        layoutInflater = AtmsMapFragmentBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "AtmsMapFragmentBinding.i…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        viewGroup = this.mapData;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        layoutInflater.setData(viewGroup);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setZoom(this);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.commissionAtmsSwitcher.setOnCheckedChangeListener((OnCheckedChangeListener) new RefillCashFragment$onCreateView$1(this));
        layoutInflater = this.mapData;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        layoutInflater = layoutInflater.getShowMyLocation();
        if (this.lastLocation != null) {
            bundle = 1;
        }
        layoutInflater.set(bundle);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = BottomSheetBehavior.from((View) layoutInflater.bottomSheetHolder);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "BottomSheetBehavior.from…inding.bottomSheetHolder)");
        this.behavior = layoutInflater;
        layoutInflater = this.behavior;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("behavior");
        }
        layoutInflater.setHideable(true);
        layoutInflater = this.behavior;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("behavior");
        }
        layoutInflater.setState(5);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.fab;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.fab");
        layoutInflater = layoutInflater.getLayoutParams();
        if (layoutInflater == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.design.widget.CoordinatorLayout.LayoutParams");
        }
        this.fabParams = (LayoutParams) layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.fab.animate().scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED).setDuration(null).setListener((AnimatorListener) new RefillCashFragment$onCreateView$2(this)).start();
        layoutInflater = this.fabParams;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabParams");
        }
        layoutInflater.anchorGravity = 81;
        layoutInflater = this.behavior;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("behavior");
        }
        layoutInflater.setBottomSheetCallback((BottomSheetCallback) new RefillCashFragment$onCreateView$3(this));
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return layoutInflater.getRoot();
    }

    public final void onScaleUp(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = this.map;
        if (view != null) {
            view.animateCamera(CameraUpdateFactory.zoomIn());
        }
    }

    public final void onScaleDown(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = this.map;
        if (view != null) {
            view.animateCamera(CameraUpdateFactory.zoomOut());
        }
    }

    public final void onClusterItemClicked$36ed8276(ReLinker<RealmAtm> reLinker) {
        super.onClusterItemClicked$36ed8276(reLinker);
        reLinker = reLinker != null ? (RealmAtm) reLinker.getRealmObject() : null;
        if (reLinker != null) {
            showDescription(reLinker);
        }
    }

    public final void onMapClicked(LatLng latLng) {
        super.onMapClicked(latLng);
        deselectMarker();
        this.nowShowing = null;
        hideDescriptionWindowHeader();
    }

    public final void onLocation(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        moveOnMyLocation();
    }

    private final void showDescription(RealmAtm realmAtm) {
        boolean z = this.nowShowing;
        this.nowShowing = true;
        showDescriptionWindowHeader(z);
        MapData mapData = this.mapData;
        if (mapData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        mapData.getInstructionType().set(AtmType.INSTANCE.instructionType(realmAtm.realmGet$type()));
        mapData = this.mapData;
        if (mapData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        ObservableField limits = mapData.getLimits();
        AtmType atmType = AtmType.INSTANCE;
        String realmGet$type = realmAtm.realmGet$type();
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        limits.set(atmType.limits(realmGet$type, context));
        mapData = this.mapData;
        if (mapData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        mapData.getAtmsName().set(realmAtm.realmGet$name());
        mapData = this.mapData;
        if (mapData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        mapData.getAtmsAddress().set(realmAtm.realmGet$address());
        mapData = this.mapData;
        if (mapData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapData");
        }
        mapData.getAtmsWorkingTime().set(realmAtm.realmGet$hours());
    }

    private final void hideDescriptionWindowHeader() {
        BottomSheetBehavior bottomSheetBehavior = this.behavior;
        if (bottomSheetBehavior == null) {
            Intrinsics.throwUninitializedPropertyAccessException("behavior");
        }
        bottomSheetBehavior.setState(5);
    }

    private final void showDescriptionWindowHeader(boolean z) {
        AtmsMapFragmentBinding atmsMapFragmentBinding = this.binding;
        if (atmsMapFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = atmsMapFragmentBinding.header;
        linearLayout.requestLayout();
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view");
        ViewTreeObserver viewTreeObserver = linearLayout.getViewTreeObserver();
        Intrinsics.checkExpressionValueIsNotNull(viewTreeObserver, "viewTreeObserver");
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnGlobalLayoutListener(new RefillCashFragment$showDescriptionWindowHeader$1(this, linearLayout, z));
        }
    }

    public final void runAnimationButton(int i, int i2) {
        i = ValueAnimator.ofInt(new int[]{i, i2});
        i.addUpdateListener((AnimatorUpdateListener) new RefillCashFragment$runAnimationButton$1(this));
        i.start();
    }

    public final void runAnimation(int i, int i2) {
        i = ValueAnimator.ofInt(new int[]{i, i2});
        i.addUpdateListener((AnimatorUpdateListener) new RefillCashFragment$runAnimation$1(this));
        i.start();
    }
}
