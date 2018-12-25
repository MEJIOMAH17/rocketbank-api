package ru.rocketbank.r2d2.fragments.delivery;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.google.android.gms.maps.OnMapReadyCallback;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryScheduledData;
import ru.rocketbank.r2d2.databinding.FragmentDeliveryScheduledBinding;

/* compiled from: DeliveryScheduledFragment.kt */
public final class DeliveryScheduledFragment extends AbstractMapFragment<DeliveryScheduledView, DeliveryScheduledPresenter> implements DeliveryScheduledView {
    public static final Companion Companion = new Companion();
    private static final String KEY_TOOLBAR_HEIGHT = "KEY_TOOLBAR_HEIGHT";
    private HashMap _$_findViewCache;
    private FragmentDeliveryScheduledBinding binding;
    private final DeliveryScheduledData data = new DeliveryScheduledData();
    private ImageView userPic;

    /* compiled from: DeliveryScheduledFragment.kt */
    public static final class Companion {
        public static /* synthetic */ void KEY_TOOLBAR_HEIGHT$annotations() {
        }

        private Companion() {
        }

        public final String getKEY_TOOLBAR_HEIGHT() {
            return DeliveryScheduledFragment.KEY_TOOLBAR_HEIGHT;
        }

        public final DeliveryScheduledFragment newInstance(String str, int i) {
            Intrinsics.checkParameterIsNotNull(str, "deliveryToken");
            DeliveryScheduledFragment deliveryScheduledFragment = new DeliveryScheduledFragment();
            AbstractDeliveryFragment.Companion.setArguments(deliveryScheduledFragment, str).putInt(getKEY_TOOLBAR_HEIGHT(), i);
            return deliveryScheduledFragment;
        }
    }

    public static final String getKEY_TOOLBAR_HEIGHT() {
        return KEY_TOOLBAR_HEIGHT;
    }

    public static final DeliveryScheduledFragment newInstance(String str, int i) {
        return Companion.newInstance(str, i);
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
        return C0859R.string.delivery;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final DeliveryScheduledPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("724f4986-9046-4e77-8e74-780313009ba8");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"724f498…-4e77-8e74-780313009ba8\")");
        return (DeliveryScheduledPresenter) PresenterManager.getOrCreatePresenter(fromString, DeliveryScheduledPresenter.class);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        ((DeliveryScheduledPresenter) getPresenter()).onCreate(bundle);
        layoutInflater = FragmentDeliveryScheduledBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentDeliverySchedule…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setData(this.data);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.markerImg;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.markerImg");
        setMarkerImg(layoutInflater);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.userPic;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.userPic");
        this.userPic = (ImageView) layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.mapView;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.mapView");
        setMapView(layoutInflater);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.contentLayout;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.contentLayout");
        setPivotMarkerView((View) layoutInflater);
        getMapView().onCreate(bundle);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.root");
        return layoutInflater;
    }

    protected final void initMarkerCoordinates() {
        int[] iArr = new int[2];
        getPivotMarkerView().getLocationOnScreen(iArr);
        Bundle arguments = getArguments();
        ((DeliveryScheduledPresenter) getPresenter()).showUser(((iArr[1] + getMarkerImg().getHeight()) - (getMapView().getHeight() / 2)) - (arguments != null ? arguments.getInt(KEY_TOOLBAR_HEIGHT) : 0));
        getMapView().getMapAsync((OnMapReadyCallback) getPresenter());
    }

    public final void showDeliveryInfo(String str, String str2) {
        this.data.getText().set(str2);
        if (str != null) {
            str = Glide.with(getContext()).load(str).error(C0859R.color.gray);
            str2 = this.userPic;
            if (str2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("userPic");
            }
            str.into(str2);
        }
    }
}
