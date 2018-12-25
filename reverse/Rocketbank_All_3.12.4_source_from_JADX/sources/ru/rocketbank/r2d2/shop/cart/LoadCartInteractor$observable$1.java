package ru.rocketbank.r2d2.shop.cart;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.model.shop.Size;
import ru.rocketbank.core.realm.RealmCartItem;
import ru.rocketbank.core.realm.RealmString;
import ru.rocketbank.r2d2.shop.feed.LoadShopItemsInteractor;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func2;
import rx.schedulers.Schedulers;

/* compiled from: LoadCartInteractor.kt */
final class LoadCartInteractor$observable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ LoadCartInteractor this$0;

    /* compiled from: LoadCartInteractor.kt */
    /* renamed from: ru.rocketbank.r2d2.shop.cart.LoadCartInteractor$observable$1$1 */
    static final class C18321<T1, T2, R> implements Func2<T1, T2, R> {
        public static final C18321 INSTANCE = new C18321();

        C18321() {
        }

        public final Pair<List<ShopItem>, List<RealmCartItem>> call(List<? extends ShopItem> list, List<? extends RealmCartItem> list2) {
            return new Pair(list, list2);
        }
    }

    /* compiled from: LoadCartInteractor.kt */
    /* renamed from: ru.rocketbank.r2d2.shop.cart.LoadCartInteractor$observable$1$3 */
    static final class C21353 extends FunctionReference implements Function1<Throwable, Unit> {
        public static final C21353 INSTANCE = new C21353();

        C21353() {
            super(1);
        }

        public final String getName() {
            return "printStackTrace";
        }

        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass$4641416c(Throwable.class);
        }

        public final String getSignature() {
            return "printStackTrace()V";
        }

        public final void invoke(Throwable th) {
            Intrinsics.checkParameterIsNotNull(th, "p1");
            th.printStackTrace();
        }
    }

    LoadCartInteractor$observable$1(LoadCartInteractor loadCartInteractor) {
        this.this$0 = loadCartInteractor;
    }

    public final void call(final Subscriber<? super Cart> subscriber) {
        if (LoadCartInteractor.Companion.getCart() != null) {
            subscriber.onNext(LoadCartInteractor.Companion.getCart());
            subscriber.onCompleted();
            return;
        }
        this.this$0.setLoadShopItemsInteractor(new LoadShopItemsInteractor(this.this$0.getShopApi()));
        LoadShopItemsInteractor loadShopItemsInteractor = this.this$0.getLoadShopItemsInteractor();
        Observable observeOn = Observable.zip(loadShopItemsInteractor != null ? loadShopItemsInteractor.getObservable() : null, this.this$0.getCartStorage().readObservable(), C18321.INSTANCE).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        Action1 c20552 = new Action1<Pair<? extends List<? extends ShopItem>, ? extends List<? extends RealmCartItem>>>() {
            public final void call(Pair<? extends List<? extends ShopItem>, ? extends List<? extends RealmCartItem>> pair) {
                List list = (List) pair.getFirst();
                List list2 = (List) pair.getSecond();
                Intrinsics.checkExpressionValueIsNotNull(list2, "realmCartItems");
                Iterable<RealmCartItem> iterable = list2;
                Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
                for (RealmCartItem realmCartItem : iterable) {
                    Object obj;
                    Object cartItem;
                    long realmGet$storeItemId = realmCartItem.realmGet$storeItemId();
                    Intrinsics.checkExpressionValueIsNotNull(list, "storeItems");
                    Iterator it = list.iterator();
                    Object obj2;
                    do {
                        String str = null;
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        if (((ShopItem) obj).getId() == realmGet$storeItemId) {
                            obj2 = 1;
                            continue;
                        } else {
                            obj2 = null;
                            continue;
                        }
                    } while (obj2 == null);
                    ShopItem shopItem = (ShopItem) obj;
                    if (shopItem != null) {
                        String realmGet$string;
                        Long valueOf = Long.valueOf(realmCartItem.realmGet$id());
                        RealmString realmGet$sizeID = realmCartItem.realmGet$sizeID();
                        if (realmGet$sizeID != null) {
                            realmGet$string = realmGet$sizeID.realmGet$string();
                        } else {
                            realmGet$string = null;
                        }
                        Size findSize = shopItem.findSize(realmGet$string);
                        RealmString realmGet$colorID = realmCartItem.realmGet$colorID();
                        if (realmGet$colorID != null) {
                            str = realmGet$colorID.realmGet$string();
                        }
                        cartItem = new CartItem(shopItem, valueOf, findSize, shopItem.findColor(str));
                    } else {
                        cartItem = null;
                    }
                    arrayList.add(cartItem);
                }
                LoadCartInteractor.Companion.setCart(new Cart(CollectionsKt.filterNotNull((List) arrayList)));
                subscriber.onNext(LoadCartInteractor.Companion.getCart());
                subscriber.onCompleted();
            }
        };
        subscriber = (Function1) C21353.INSTANCE;
        if (subscriber != null) {
            subscriber = new LoadCartInteractor$sam$rx_functions_Action1$0(subscriber);
        }
        observeOn.subscribe(c20552, (Action1) subscriber);
    }
}
