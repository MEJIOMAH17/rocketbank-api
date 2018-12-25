package ru.rocketbank.r2d2.shop.order;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.appcompat.C0219R.attr;
import android.view.View;
import android.widget.TextView;
import com.google.gson.JsonElement;
import java.io.StringReader;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.model.shop.ShopOrder.Address;
import ru.rocketbank.core.model.shop.ShopOrderResponse;
import ru.rocketbank.core.network.api.ShopApi;
import ru.rocketbank.core.utils.Interactor;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.StatusActivity;
import ru.rocketbank.r2d2.shop.cart.ClearCartInteractor;
import ru.rocketbank.r2d2.shop.cart.LoadCartInteractor;
import rx.Observable;

/* compiled from: ShopStatusActivity.kt */
public final class ShopStatusActivity extends StatusActivity<ShopOrderResponse> {
    public static final Companion Companion = new Companion();
    private static final String KEY_ADDRESS_OBJECT = "KEY_ADDRESS_OBJECT";
    private static final String KEY_ADDRESS_STRING = "KEY_ADDRESS_STRING";
    private static final String KEY_CART = "KEY_CART";
    private static final String KEY_COMMENT = "KEY_COMMENT";
    private HashMap _$_findViewCache;
    private String addressObject;
    private String addressString;
    private Cart cart;
    private final CartStorage cartStorage = RocketApplication.Companion.getInjector().getCartStorage();
    private String comment;
    private final int contentView = C0859R.layout.activity_shop_status;
    private final ShopApi shopApi = RocketApplication.Companion.getInjector().getShopApi();
    private final int successStatusText = C0859R.string.ok;

    /* compiled from: ShopStatusActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Intent createIntent(Activity activity, Cart cart, String str, String str2, String str3) {
            Intrinsics.checkParameterIsNotNull(activity, "context");
            Intrinsics.checkParameterIsNotNull(cart, "cart");
            Intrinsics.checkParameterIsNotNull(str, "addressString");
            Intrinsics.checkParameterIsNotNull(str2, "addressObject");
            activity = StatusActivity.Companion.createIntent(activity, ShopStatusActivity.class, C0859R.string.shop_title);
            activity.putExtra(ShopStatusActivity.KEY_CART, cart);
            activity.putExtra(ShopStatusActivity.KEY_ADDRESS_STRING, str);
            activity.putExtra(ShopStatusActivity.KEY_ADDRESS_OBJECT, str2);
            activity.putExtra(ShopStatusActivity.KEY_COMMENT, str3);
            Intrinsics.checkExpressionValueIsNotNull(activity, "intent");
            return activity;
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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final void onCreate(Bundle bundle) {
        Parcelable parcelableExtra = getIntent().getParcelableExtra(KEY_CART);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra<Cart>(KEY_CART)");
        this.cart = (Cart) parcelableExtra;
        this.comment = getIntent().getStringExtra(KEY_COMMENT);
        String stringExtra = getIntent().getStringExtra(KEY_ADDRESS_STRING);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "intent.getStringExtra(KEY_ADDRESS_STRING)");
        this.addressString = stringExtra;
        stringExtra = getIntent().getStringExtra(KEY_ADDRESS_OBJECT);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "intent.getStringExtra(KEY_ADDRESS_OBJECT)");
        this.addressObject = stringExtra;
        super.onCreate(bundle);
    }

    protected final int getContentView() {
        return this.contentView;
    }

    protected final int getSuccessStatusText() {
        return this.successStatusText;
    }

    protected final Observable<ShopOrderResponse> getOperation() {
        ShopApi shopApi = this.shopApi;
        Cart cart = this.cart;
        if (cart == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cart");
        }
        String str = this.comment;
        String str2 = this.addressString;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressString");
        }
        attr attr = new attr();
        String str3 = this.addressObject;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addressObject");
        }
        JsonElement parse = attr.parse(new StringReader(str3));
        Intrinsics.checkExpressionValueIsNotNull(parse, "JsonParser().parse(addressObject)");
        return shopApi.order(cart.order(str, new Address(str2, parse)));
    }

    protected final void onNext(ShopOrderResponse shopOrderResponse) {
        Intrinsics.checkParameterIsNotNull(shopOrderResponse, "genericRequestResponseData");
        if (Intrinsics.areEqual(shopOrderResponse.getStatus(), "error")) {
            TextView textView = (TextView) _$_findCachedViewById(C0859R.id.textViewLarge);
            Intrinsics.checkExpressionValueIsNotNull(textView, "textViewLarge");
            textView.setVisibility(8);
            setResult(-1);
            if (!((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).hasError()) {
                ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).setError();
            }
            RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewStatus");
            rocketTextView.setVisibility(0);
            rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewStatus");
            rocketTextView.setText(shopOrderResponse.getError());
            return;
        }
        super.onNext(shopOrderResponse);
        TextView textView2 = (TextView) _$_findCachedViewById(C0859R.id.textViewLarge);
        Intrinsics.checkExpressionValueIsNotNull(textView2, "textViewLarge");
        textView2.setVisibility(0);
        ((RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus)).setText(C0859R.string.shop_success_delivery);
    }

    protected final void onSuccess(ShopOrderResponse shopOrderResponse) {
        Intrinsics.checkParameterIsNotNull(shopOrderResponse, "genericRequestResponseData");
        super.onSuccess(shopOrderResponse);
        shopOrderResponse = LoadCartInteractor.Companion.getCart();
        if (shopOrderResponse == null) {
            shopOrderResponse = this.cart;
            if (shopOrderResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cart");
            }
        }
        Interactor.execute$default(new ClearCartInteractor(shopOrderResponse, this.cartStorage), (Function1) ShopStatusActivity$onSuccess$1.INSTANCE, null, null, 6, null);
    }
}
