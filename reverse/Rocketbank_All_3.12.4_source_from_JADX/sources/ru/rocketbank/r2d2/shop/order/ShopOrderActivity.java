package ru.rocketbank.r2d2.shop.order;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.AutoCompleteTextView;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import com.jakewharton.rxbinding.widget.RxTextView;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.network.model.AddressData;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.databinding.ActivityShopOrderBinding;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;
import ru.rocketbank.r2d2.shop.order.ShopOrderContract.View;
import ru.rocketbank.r2d2.shop.order.StoreCheckoutViewModel.AddressAdapter;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: ShopOrderActivity.kt */
public final class ShopOrderActivity extends PresenterSecuredActivity<ShopOrderPresenter> implements View {
    public static final Companion Companion = new Companion();
    private static final String KEY_CART = "KEY_CART";
    private static final int REQUEST_CODE = 0;
    private static AddressData addressData;
    private static String commentText;
    private HashMap _$_findViewCache;
    public AddressAdapter arrayAdapter;
    private StoreCheckoutViewModel data = new StoreCheckoutViewModel();
    private Subscription subscription;

    /* compiled from: ShopOrderActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_CART() {
            return ShopOrderActivity.KEY_CART;
        }

        public final int getREQUEST_CODE() {
            return ShopOrderActivity.REQUEST_CODE;
        }

        public final AddressData getAddressData() {
            return ShopOrderActivity.addressData;
        }

        public final void setAddressData(AddressData addressData) {
            ShopOrderActivity.addressData = addressData;
        }

        public final String getCommentText() {
            return ShopOrderActivity.commentText;
        }

        public final void setCommentText(String str) {
            ShopOrderActivity.commentText = str;
        }

        public final Intent createIntent(Context context, Cart cart) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(cart, "cart");
            Intent intent = new Intent(context, ShopOrderActivity.class);
            intent.putExtra(getKEY_CART(), cart);
            return intent;
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final android.view.View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        android.view.View view = (android.view.View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final ShopOrderPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        return (ShopOrderPresenter) PresenterManager.getOrCreatePresenter("45ef247a-062b-4194-98fb-e87fc201a5e8", ShopOrderPresenter.class);
    }

    public final AddressAdapter getArrayAdapter() {
        AddressAdapter addressAdapter = this.arrayAdapter;
        if (addressAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("arrayAdapter");
        }
        return addressAdapter;
    }

    public final void setArrayAdapter(AddressAdapter addressAdapter) {
        Intrinsics.checkParameterIsNotNull(addressAdapter, "<set-?>");
        this.arrayAdapter = addressAdapter;
    }

    public final Subscription getSubscription() {
        return this.subscription;
    }

    public final void setSubscription(Subscription subscription) {
        this.subscription = subscription;
    }

    public final void showAmount(double d) {
        ViewField price = this.data.getPrice();
        if (price != null) {
            price.setValue(ShopUtilsKt.createCartItemAmountText(this, d));
        }
    }

    public final void setConfirmButtonEnabled(boolean z) {
        RocketButton rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.buttonConfirm);
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "buttonConfirm");
        rocketButton.setEnabled(z);
    }

    public final void showShopInfo() {
        ShopInfoActivity.Companion.start(this);
    }

    public final void showAddresses(List<AddressData> list) {
        Intrinsics.checkParameterIsNotNull(list, "addressList");
        AddressAdapter addressAdapter = this.arrayAdapter;
        if (addressAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("arrayAdapter");
        }
        int i = 0;
        list = list.toArray(new AddressData[0]);
        if (list == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        addressAdapter.setItems((AddressData[]) list);
        list = this.arrayAdapter;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("arrayAdapter");
        }
        list.notifyDataSetChanged();
        ProgressBar progressBar = (ProgressBar) _$_findCachedViewById(C0859R.id.addressProgressBar);
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "addressProgressBar");
        progressBar.setVisibility(8);
        if (((AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address)).hasFocus() != null) {
            RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.addressError);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "addressError");
            rocketTextView.setVisibility(8);
            if (this.data.getAddressIsValid() == null) {
                list = this.data.getAddress();
                CharSequence charSequence = (CharSequence) (list != null ? list.getValue() : null);
                if (charSequence == null || charSequence.length() == null) {
                    i = 1;
                }
                if (i == 0) {
                    ((AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address)).showDropDown();
                    return;
                }
            }
        }
        checkAddress();
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_shop_order);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…yout.activity_shop_order)");
        ActivityShopOrderBinding activityShopOrderBinding = (ActivityShopOrderBinding) bundle;
        activityShopOrderBinding.setData(this.data);
        setSupportActionBar(activityShopOrderBinding.toolbar);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        setTitle(C0859R.string.shop_checkout_title);
        ((ShopOrderPresenter) getPresenter()).setView(this);
        ((ShopOrderPresenter) getPresenter()).setData(this.data);
        ShopOrderPresenter shopOrderPresenter = (ShopOrderPresenter) getPresenter();
        Parcelable parcelableExtra = getIntent().getParcelableExtra(KEY_CART);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra<Cart>(KEY_CART)");
        shopOrderPresenter.init((Cart) parcelableExtra);
        ((RocketButton) _$_findCachedViewById(C0859R.id.buttonConfirm)).setOnClickListener(new ShopOrderActivity$onCreate$1(this));
        ((ImageButton) _$_findCachedViewById(C0859R.id.buttonHaveQuestion)).setOnClickListener(new ShopOrderActivity$onCreate$2(this));
        this.arrayAdapter = new AddressAdapter(this);
        ((AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address)).setOnFocusChangeListener(new ShopOrderActivity$onCreate$3(this));
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address);
        Intrinsics.checkExpressionValueIsNotNull(autoCompleteTextView, "address");
        autoCompleteTextView.setThreshold(1);
        bundle = this.arrayAdapter;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("arrayAdapter");
        }
        bundle.setNotifyOnChange(true);
        autoCompleteTextView = (AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address);
        AddressAdapter addressAdapter = this.arrayAdapter;
        if (addressAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("arrayAdapter");
        }
        autoCompleteTextView.setAdapter(addressAdapter);
        if (addressData != null) {
            this.data.setAddressIsValid(true);
            bundle = this.data.getAddress();
            if (bundle != null) {
                bundle.setValue(String.valueOf(addressData));
            }
            bundle = this.arrayAdapter;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("arrayAdapter");
            }
            AddressData[] addressDataArr = new AddressData[1];
            AddressData addressData = addressData;
            if (addressData == null) {
                Intrinsics.throwNpe();
            }
            addressDataArr[0] = addressData;
            bundle.setItems(addressDataArr);
        }
        bundle = this.data.getComment();
        if (bundle != null) {
            bundle.setValue(commentText);
        }
    }

    private final void checkAddress() {
        if (!this.data.getAddressIsValid()) {
            int i;
            RocketTextView rocketTextView;
            ViewField address = this.data.getAddress();
            CharSequence value = address != null ? address.getValue() : null;
            if (value != null) {
                if (value.length() != 0) {
                    i = 0;
                    if (i == 0) {
                        ((AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address)).setBackgroundResource(C0859R.drawable.underline_red);
                        rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.addressError);
                        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "addressError");
                        rocketTextView.setVisibility(0);
                        ((RocketTextView) _$_findCachedViewById(C0859R.id.addressError)).setText(C0859R.string.wrong_address_shop);
                    }
                }
            }
            i = 1;
            if (i == 0) {
                ((AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address)).setBackgroundResource(C0859R.drawable.underline_red);
                rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.addressError);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "addressError");
                rocketTextView.setVisibility(0);
                ((RocketTextView) _$_findCachedViewById(C0859R.id.addressError)).setText(C0859R.string.wrong_address_shop);
            }
        }
    }

    protected final void onResume() {
        super.onResume();
        this.subscription = RxTextView.afterTextChangeEvents((AutoCompleteTextView) _$_findCachedViewById(C0859R.id.address)).skip(1).debounce(500, TimeUnit.MILLISECONDS).filter(ShopOrderActivity$onResume$1.INSTANCE).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new ShopOrderActivity$onResume$2(this));
    }

    protected final void onPause() {
        unsubscribe(this.subscription);
        RocketEditText rocketEditText = (RocketEditText) _$_findCachedViewById(C0859R.id.comment);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "comment");
        commentText = rocketEditText.getText().toString();
        super.onPause();
    }

    public final void onConfirmed(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "cart");
        if (addressData != null) {
            ru.rocketbank.r2d2.shop.order.ShopStatusActivity.Companion companion = ShopStatusActivity.Companion;
            Activity activity = this;
            StringBuilder stringBuilder = new StringBuilder();
            AddressData addressData = addressData;
            if (addressData == null) {
                Intrinsics.throwNpe();
            }
            stringBuilder.append(addressData.getCity());
            stringBuilder.append(", ");
            addressData = addressData;
            if (addressData == null) {
                Intrinsics.throwNpe();
            }
            stringBuilder.append(addressData.getValue());
            String stringBuilder2 = stringBuilder.toString();
            AddressData addressData2 = addressData;
            if (addressData2 == null) {
                Intrinsics.throwNpe();
            }
            String jsonElement = addressData2.getData().toString();
            Intrinsics.checkExpressionValueIsNotNull(jsonElement, "addressData!!.data.toString()");
            ViewField comment = this.data.getComment();
            startActivityForResult(companion.createIntent(activity, cart, stringBuilder2, jsonElement, comment != null ? comment.getValue() : null), REQUEST_CODE);
        }
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE) {
            setResult(i2);
            ((ShopOrderPresenter) getPresenter()).onResult(i2 == -1 ? 1 : 0);
        }
    }

    public final void back() {
        finish();
    }
}
