package ru.rocketbank.core.dagger.component;

import android.content.Context;
import android.media.MediaPlayer;
import com.facebook.appevents.AppEventsLogger;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.maps.android.C0651R;
import com.google.maps.android.C0651R.style;
import com.jakewharton.rxbinding.support.v7.widget.RxSearchView;
import com.jakewharton.rxbinding.view.RxView;
import com.jakewharton.rxbinding.widget.RxTextView;
import com.mattprecious.swirl.C1265R;
import com.mattprecious.swirl.C1265R.drawable;
import com.mikepenz.materialdrawer.C1266R;
import com.mikepenz.materialdrawer.C1266R.attr;
import com.mikepenz.materialdrawer.C1266R.dimen;
import com.mikepenz.materialdrawer.C1266R.id;
import com.mikepenz.materialdrawer.MiniDrawer;
import com.mikepenz.materialdrawer.util.DrawerUIUtils;
import com.mikepenz.materialize.C0665R;
import com.mikepenz.materialize.C0665R.color;
import com.mikepenz.materialize.C0665R.layout;
import com.mikepenz.materialize.color.Material;
import com.mikepenz.materialize.color.Material.Elements;
import com.mikepenz.materialize.util.KeyboardUtil;
import com.mikepenz.materialize.util.UIUtils;
import com.scottyab.rootbeer.RootBeer;
import dagger.internal.DoubleCheck;
import dagger.internal.MembersInjectors;
import dagger.internal.ReferenceReleasingProviderManager;
import dagger.internal.SingleCheck;
import io.card.payment.ui.ActivityHelper;
import javax.inject.Provider;
import jp.co.cyberagent.android.gpuimage.OpenGlUtils;
import jp.wasabeef.glide.transformations.internal.FastBlur;
import jp.wasabeef.glide.transformations.internal.RSBlur;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.collections.SlidingWindowKt;
import kotlin.coroutines.experimental.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import me.grantland.widget.C1291R;
import me.philio.pinentry.C1292R;
import okhttp3.internal.http.RequestLine;
import retrofit2.Retrofit;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.C1328R.anim;
import ru.rocketbank.core.C1328R.bool;
import ru.rocketbank.core.C1328R.integer;
import ru.rocketbank.core.C1328R.mipmap;
import ru.rocketbank.core.C1328R.plurals;
import ru.rocketbank.core.C1328R.raw;
import ru.rocketbank.core.C1328R.string;
import ru.rocketbank.core.dagger.AndroidModule;
import ru.rocketbank.core.dagger.CurrencyModule;
import ru.rocketbank.core.dagger.DiscountsModule;
import ru.rocketbank.core.dagger.GeoLocationModule;
import ru.rocketbank.core.dagger.RetrofitModule;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.dagger.UtilsModule_ProvidesRocketShortcutManagerFactory;
import ru.rocketbank.core.dagger.UtilsModule_ProvidesTouchManagerFactory;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.AppInfoManager;
import ru.rocketbank.core.manager.AtmsManager;
import ru.rocketbank.core.manager.BankAccountManager;
import ru.rocketbank.core.manager.CardManager;
import ru.rocketbank.core.manager.ContactManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.DeliveryManager;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FireCMManager;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.manager.KeyManager.DefaultImpls;
import ru.rocketbank.core.manager.RocketShortcutManager;
import ru.rocketbank.core.manager.TemplateManager;
import ru.rocketbank.core.manager.TouchManager;
import ru.rocketbank.core.manager.WidgetManager;
import ru.rocketbank.core.manager.loader.FeedLoader;
import ru.rocketbank.core.manager.loader.cacher.discounts.DiscountCache;
import ru.rocketbank.core.manager.security.CertificateManager;
import ru.rocketbank.core.manager.security.RocketFingerPrintListener;
import ru.rocketbank.core.manager.security.storage.FileTokenStorageImpl;
import ru.rocketbank.core.manager.security.storage.RealmTouchTokenStorageImpl;
import ru.rocketbank.core.manager.security.storage.SharedPreferencesTokenStorageImpl;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.network.adapter.OkClientRestAdapter;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.network.api.AgentsApi;
import ru.rocketbank.core.network.api.AnalyticsApi;
import ru.rocketbank.core.network.api.AndroidPayApi;
import ru.rocketbank.core.network.api.CafeApi;
import ru.rocketbank.core.network.api.Card2CardApi;
import ru.rocketbank.core.network.api.DeliveryApi;
import ru.rocketbank.core.network.api.DepositApi;
import ru.rocketbank.core.network.api.LoginApi;
import ru.rocketbank.core.network.api.MessageApi;
import ru.rocketbank.core.network.api.MigrationApi;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.api.PhoneApi;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.network.api.ProvidersApi;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.api.SexyLeadsApi;
import ru.rocketbank.core.network.api.ShopApi;
import ru.rocketbank.core.network.api.TariffsApi;
import ru.rocketbank.core.network.api.TemplateApi;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.api.YandexMapApi;
import ru.rocketbank.core.pay.google.RxTapAndPay;
import ru.rocketbank.core.pay.google.UiTapAndPay;
import ru.rocketbank.core.pay.samsung.RxSPay;
import ru.rocketbank.core.user.AppInformationStorage;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.user.AuthorizationStorage;
import ru.rocketbank.core.user.WidgetStorage;
import ru.rocketbank.core.utils.AppConfig;
import ru.rocketbank.core.utils.ButtonHandler;
import ru.rocketbank.core.utils.CollectionUtilsKt;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.ParcelableUtilsKt;
import ru.rocketbank.core.utils.fs.FileManager;

public final class DaggerRocketComponent implements RocketComponent {
    private AndroidModule androidModule;
    private GeoLocationModule geoLocationModule;
    private Provider<AccountApi> provideAccountApiProvider;
    private Provider<AgentsApi> provideAgentsApiProvider;
    private Provider<AnalyticsApi> provideAnalyticsApiProvider;
    private Provider<UiTapAndPay> provideAndroidTapAndPayProvider;
    private style provideAppContextProvider$143db588;
    private Provider<AppInfoManager> provideAppInfoManagerProvider;
    private Provider<AppInformationStorage> provideAppInfoStorageProvider;
    private Provider<AuthorizationStorage> provideAuthStorageProvider;
    private layout provideAuthorizationProvider$6c2cfc56;
    private Provider<Authorization> provideAuthorizationProvider2;
    private Provider<BankAccountManager> provideBankAccountManagerProvider;
    private Provider<CafeApi> provideCafeApiProvider;
    private Provider<Card2CardApi> provideCard2CardApiProvider;
    private Provider<CardManager> provideCardManagerProvider;
    private Provider<CartStorage> provideCartStorageProvider;
    private Provider<CertificateManager> provideCertificateManagerProvider;
    private Provider<CurrencyManager> provideCurrencyManagerProvider;
    private Provider<DeliveryApi> provideDeliveryApiProvider;
    private Provider<DeliveryManager> provideDeliveryManagerProvider;
    private Provider<DiscountCache> provideDiscountsCacheProvider;
    private Provider<AppEventsLogger> provideFacebookLoggerProvider;
    private Provider<FeedLoader> provideFeedLoaderProvider;
    private Provider<FeedManager> provideFeedManagerProvider;
    private Provider<FireCMManager> provideFireCMManagerProvider;
    private Provider<GoogleApiClient> provideGoogleApiClientProvider;
    private Provider<SexyLeadsApi> provideLeadsApiProvider;
    private Provider<MessageApi> provideMessageApiProvider;
    private Provider<MigrationApi> provideMigrationApiProvider;
    private Ref provideNoAuthWidgetProvider$467fdcb4;
    private Provider<OperationApi> provideOperationApiProvider;
    private Provider<PhoneApi> providePhoneApiProvider;
    private Provider<PlasticsApi> providePlasticsApiProvider;
    private Provider<ProvidersApi> provideProvidersApiProvider;
    private Provider<RegistrationApi> provideRegistrationApiProvider;
    private integer provideRetorofitAdapterWidgetProvider$1e83d28d;
    private C1328R.layout provideRetrofitAdapterProvider$7ed9b1f8;
    private mipmap provideRetrofitForYandexProvider$517c043d;
    private Provider<RocketAPI> provideRocketAPIProvider;
    private Provider<RootBeer> provideRootCheckerProvider;
    private Provider<RxSPay> provideSPayProvider;
    private Provider<ShopApi> provideStoreApiProvider;
    private Provider<RxTapAndPay> provideTapAndPayProvider;
    private Provider<TariffsApi> provideTariffsApiProvider;
    private Provider<TemplateApi> provideTemplateApiProvider;
    private Provider<TemplateManager> provideTemplateManagerProvider;
    private Provider<UserApi> provideUserApiProvider;
    private Provider<WidgetManager> provideWidgetManagerProvider;
    private Provider<WidgetStorage> provideWidgetStorageProvider;
    private Provider<YandexMapApi> provideYandexApiProvider;
    private Provider<AppConfig> providersAppConfigProvider;
    private Provider<FileManager> providersFileManagerProvider;
    private Provider<HeaderManager> providersHeaderManagerProvider;
    private Provider<AnalyticsManager> providesAnalyticsManagerProvider;
    private Provider<AtmsManager> providesAtmsManagerProvider;
    private Provider<ContactManager> providesContactManagerProvider;
    private Provider<DataManager> providesDataManagerProvider;
    private Provider<DepositApi> providesDepositApiProvider;
    private Provider<KeyManager> providesKeyManagerProvider;
    private com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo.Amount.Builder providesProvider$1df21a27;
    private Provider<RocketShortcutManager> providesRocketShortcutManagerProvider;
    private Provider<TouchManager> providesTouchManagerProvider;
    private KeyboardUtil restModule$3d1596a7;
    private RetrofitModule retrofitModule;
    private raw touchIDModule$3af7dc09;
    private com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder utilsModule$7fc98512;

    public static final class Builder {
        private AndroidModule androidModule;
        private drawable atmsModule$37486e3e;
        private attr cardModule$5fcde415;
        private dimen certificateModule$7940e6c;
        private CurrencyModule currencyModule;
        private C1266R.layout deliveryModule$19fe5379;
        private DiscountsModule discountsModule;
        private DrawerUIUtils facebookModule$ec23d75;
        private color feedModule$5773aa63;
        private GeoLocationModule geoLocationModule;
        private Material messageModule$11baabfc;
        private KeyboardUtil restModule$3d1596a7;
        private RetrofitModule retrofitModule;
        private ExceptionsKt__ExceptionsKt templateModule$10f37941;
        private raw touchIDModule$3af7dc09;
        private UserModule userModule;
        private com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder utilsModule$7fc98512;

        private Builder() {
        }

        public final RocketComponent build() {
            if (this.androidModule == null) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(AndroidModule.class.getCanonicalName());
                stringBuilder.append(" must be set");
                throw new IllegalStateException(stringBuilder.toString());
            }
            if (this.geoLocationModule == null) {
                this.geoLocationModule = new GeoLocationModule();
            }
            if (this.utilsModule$7fc98512 == null) {
                this.utilsModule$7fc98512 = new com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder();
            }
            if (this.userModule == null) {
                this.userModule = new UserModule();
            }
            if (this.retrofitModule == null) {
                this.retrofitModule = new RetrofitModule();
            }
            if (this.restModule$3d1596a7 == null) {
                this.restModule$3d1596a7 = new KeyboardUtil();
            }
            if (this.currencyModule == null) {
                this.currencyModule = new CurrencyModule();
            }
            if (this.facebookModule$ec23d75 == null) {
                this.facebookModule$ec23d75 = new DrawerUIUtils();
            }
            if (this.atmsModule$37486e3e == null) {
                this.atmsModule$37486e3e = new drawable();
            }
            if (this.feedModule$5773aa63 == null) {
                this.feedModule$5773aa63 = new color();
            }
            if (this.cardModule$5fcde415 == null) {
                this.cardModule$5fcde415 = new attr();
            }
            if (this.deliveryModule$19fe5379 == null) {
                this.deliveryModule$19fe5379 = new C1266R.layout();
            }
            if (this.certificateModule$7940e6c == null) {
                this.certificateModule$7940e6c = new dimen();
            }
            if (this.discountsModule == null) {
                this.discountsModule = new DiscountsModule();
            }
            if (this.messageModule$11baabfc == null) {
                this.messageModule$11baabfc = new Material();
            }
            if (this.templateModule$10f37941 == null) {
                this.templateModule$10f37941 = new ExceptionsKt__ExceptionsKt();
            }
            if (this.touchIDModule$3af7dc09 == null) {
                this.touchIDModule$3af7dc09 = new raw();
            }
            return new DaggerRocketComponent();
        }

        public final Builder androidModule(AndroidModule androidModule) {
            this.androidModule = androidModule;
            return this;
        }
    }

    private DaggerRocketComponent(Builder builder) {
        this.provideAppContextProvider$143db588 = new style(builder.androidModule);
        this.provideAuthorizationProvider$6c2cfc56 = new layout(builder.geoLocationModule);
        this.providesKeyManagerProvider = DoubleCheck.provider(new com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo.Builder(builder.utilsModule$7fc98512, this.provideAppContextProvider$143db588));
        this.provideAppInfoStorageProvider = DoubleCheck.provider(new C1328R.style(builder.userModule, this.providesKeyManagerProvider));
        this.provideAppInfoManagerProvider = DoubleCheck.provider(new string(builder.userModule, this.provideAppContextProvider$143db588, this.provideAppInfoStorageProvider));
        this.provideAuthStorageProvider = DoubleCheck.provider(new DefaultImpls(builder.userModule, this.providesKeyManagerProvider));
        this.providersHeaderManagerProvider = DoubleCheck.provider(new com.samsung.android.sdk.samsungpay.payment.PaymentInfo.Builder(builder.utilsModule$7fc98512, this.provideAuthorizationProvider$6c2cfc56, this.provideAppInfoManagerProvider, this.provideAuthStorageProvider));
        this.provideRetrofitAdapterProvider$7ed9b1f8 = new C1328R.layout(builder.retrofitModule, this.providersHeaderManagerProvider);
        this.provideUserApiProvider = SingleCheck.provider(new C1328R.dimen(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideCurrencyManagerProvider = DoubleCheck.provider(new id(builder.currencyModule));
        this.provideProvidersApiProvider = SingleCheck.provider(new RequestLine(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.providesDataManagerProvider = DoubleCheck.provider(new com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo.Address.Builder(builder.utilsModule$7fc98512, this.provideCurrencyManagerProvider, this.provideProvidersApiProvider));
        this.provideFacebookLoggerProvider = DoubleCheck.provider(new C0665R.attr(builder.facebookModule$ec23d75, this.provideAppContextProvider$143db588));
        this.providesAnalyticsManagerProvider = DoubleCheck.provider(new com.samsung.android.sdk.samsungpay.v2.payment.CardInfo.Builder(builder.utilsModule$7fc98512, this.provideAppContextProvider$143db588, this.provideAppInfoManagerProvider, this.provideFacebookLoggerProvider));
        this.provideBankAccountManagerProvider = DoubleCheck.provider(new ButtonHandler.DefaultImpls(builder.userModule));
        this.provideAuthorizationProvider2 = DoubleCheck.provider(new RocketFingerPrintListener.DefaultImpls(builder.userModule, this.provideAppContextProvider$143db588, this.provideUserApiProvider, this.provideAuthStorageProvider, this.providesDataManagerProvider, this.providesAnalyticsManagerProvider, this.provideBankAccountManagerProvider));
        this.provideRocketAPIProvider = SingleCheck.provider(new anim(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.providesAtmsManagerProvider = DoubleCheck.provider(new C1266R(builder.atmsModule$37486e3e, this.provideAuthorizationProvider2, this.provideRocketAPIProvider));
        this.provideOperationApiProvider = SingleCheck.provider(new C1291R(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideFeedLoaderProvider = DoubleCheck.provider(new C0665R.dimen(builder.feedModule$5773aa63, this.provideAuthorizationProvider2, this.provideOperationApiProvider));
        this.provideFeedManagerProvider = DoubleCheck.provider(new C0665R.id(builder.feedModule$5773aa63, this.provideAuthorizationProvider2, this.provideOperationApiProvider, this.provideFeedLoaderProvider));
        this.provideCardManagerProvider = DoubleCheck.provider(new C1266R.color(builder.cardModule$5fcde415, this.provideRocketAPIProvider));
        this.providesRocketShortcutManagerProvider = DoubleCheck.provider(new UtilsModule_ProvidesRocketShortcutManagerFactory(builder.utilsModule$7fc98512, this.provideAppContextProvider$143db588));
        this.providesContactManagerProvider = DoubleCheck.provider(new com.samsung.android.sdk.samsungpay.v2.payment.CustomSheetPaymentInfo.Builder(builder.utilsModule$7fc98512, this.provideAppContextProvider$143db588, this.provideRocketAPIProvider, this.provideAuthorizationProvider2, this.providesRocketShortcutManagerProvider));
        this.providersAppConfigProvider = DoubleCheck.provider(new com.samsung.android.sdk.samsungpay.payment.PaymentInfo.Address.Builder(builder.utilsModule$7fc98512));
        this.providersFileManagerProvider = DoubleCheck.provider(new com.samsung.android.sdk.samsungpay.payment.PaymentInfo.Amount.Builder(builder.utilsModule$7fc98512, this.provideAppContextProvider$143db588, this.providersAppConfigProvider));
        this.provideDeliveryManagerProvider = DoubleCheck.provider(new C1266R.string(builder.deliveryModule$19fe5379));
        this.provideCertificateManagerProvider = DoubleCheck.provider(new C1266R.drawable(builder.certificateModule$7940e6c, this.provideAppContextProvider$143db588));
        this.provideDiscountsCacheProvider = DoubleCheck.provider(new C1266R.style(builder.discountsModule));
        this.provideRegistrationApiProvider = SingleCheck.provider(new C1328R(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideAccountApiProvider = SingleCheck.provider(new UIUtils(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideMigrationApiProvider = SingleCheck.provider(new CoroutineContext.DefaultImpls(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideLeadsApiProvider = SingleCheck.provider(new RSBlur(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.restModule$3d1596a7 = builder.restModule$3d1596a7;
        this.retrofitModule = builder.retrofitModule;
        this.provideGoogleApiClientProvider = SingleCheck.provider(new RxSearchView(builder.androidModule, this.provideAppContextProvider$143db588));
        this.provideTapAndPayProvider = SingleCheck.provider(new C1265R(builder.androidModule, this.provideGoogleApiClientProvider));
        this.provideAndroidTapAndPayProvider = SingleCheck.provider(new C0651R.layout(builder.androidModule, this.provideGoogleApiClientProvider));
        this.provideSPayProvider = DoubleCheck.provider(new RxTextView(builder.androidModule, this.provideAppContextProvider$143db588));
        this.provideDeliveryApiProvider = SingleCheck.provider(new FastBlur(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideRetrofitForYandexProvider$517c043d = new mipmap(builder.retrofitModule);
        this.provideYandexApiProvider = SingleCheck.provider(new C1328R.drawable(builder.restModule$3d1596a7, this.provideRetrofitForYandexProvider$517c043d));
        this.provideAnalyticsApiProvider = SingleCheck.provider(new ReferenceReleasingProviderManager(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideMessageApiProvider = SingleCheck.provider(new SlidingWindowKt(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideAgentsApiProvider = SingleCheck.provider(new MembersInjectors(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.providesDepositApiProvider = SingleCheck.provider(new C1328R.id(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.providePhoneApiProvider = SingleCheck.provider(new C1292R(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideWidgetStorageProvider = DoubleCheck.provider(new MiniDrawer(builder.userModule));
        this.providesProvider$1df21a27 = new com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo.Amount.Builder(builder.utilsModule$7fc98512, this.provideAppContextProvider$143db588, this.provideAuthorizationProvider2, this.provideCurrencyManagerProvider);
        this.provideRetorofitAdapterWidgetProvider$1e83d28d = new integer(builder.retrofitModule, this.providersHeaderManagerProvider);
        this.provideNoAuthWidgetProvider$467fdcb4 = new Ref(builder.restModule$3d1596a7, this.provideRetorofitAdapterWidgetProvider$1e83d28d);
        this.provideWidgetManagerProvider = DoubleCheck.provider(new ParcelableUtilsKt(builder.userModule, this.provideAppContextProvider$143db588, this.provideAuthorizationProvider2, this.provideWidgetStorageProvider, this.providesProvider$1df21a27, this.provideNoAuthWidgetProvider$467fdcb4));
        this.provideTariffsApiProvider = SingleCheck.provider(new bool(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.providePlasticsApiProvider = SingleCheck.provider(new C1292R.attr(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.utilsModule$7fc98512 = builder.utilsModule$7fc98512;
        this.providesTouchManagerProvider = DoubleCheck.provider(new UtilsModule_ProvidesTouchManagerFactory(builder.utilsModule$7fc98512, this.provideRocketAPIProvider, this.provideAppContextProvider$143db588));
        this.geoLocationModule = builder.geoLocationModule;
        this.provideFireCMManagerProvider = DoubleCheck.provider(new Elements(builder.messageModule$11baabfc, this.provideAuthorizationProvider2, this.provideRocketAPIProvider, this.providersHeaderManagerProvider));
        this.provideStoreApiProvider = SingleCheck.provider(new C1328R.attr(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideCartStorageProvider = DoubleCheck.provider(new CollectionUtilsKt(builder.userModule));
        this.provideCard2CardApiProvider = SingleCheck.provider(new OpenGlUtils(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideTemplateApiProvider = SingleCheck.provider(new C1328R.color(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.provideTemplateManagerProvider = DoubleCheck.provider(new plurals(builder.templateModule$10f37941, this.provideRocketAPIProvider));
        this.androidModule = builder.androidModule;
        this.provideCafeApiProvider = SingleCheck.provider(new ActivityHelper(builder.restModule$3d1596a7, this.provideRetrofitAdapterProvider$7ed9b1f8));
        this.touchIDModule$3af7dc09 = builder.touchIDModule$3af7dc09;
        this.provideRootCheckerProvider = DoubleCheck.provider(new RxView(builder.androidModule, this.provideAppContextProvider$143db588));
    }

    public static Builder builder() {
        return new Builder();
    }

    public final Authorization getAuthorization() {
        return (Authorization) this.provideAuthorizationProvider2.get();
    }

    public final CurrencyManager getCurrencyManager() {
        return (CurrencyManager) this.provideCurrencyManagerProvider.get();
    }

    public final AtmsManager getAtmsManager() {
        return (AtmsManager) this.providesAtmsManagerProvider.get();
    }

    public final AnalyticsManager getAnalyticsManager() {
        return (AnalyticsManager) this.providesAnalyticsManagerProvider.get();
    }

    public final DataManager getDataManager() {
        return (DataManager) this.providesDataManagerProvider.get();
    }

    public final HeaderManager getHeaderManager() {
        return (HeaderManager) this.providersHeaderManagerProvider.get();
    }

    public final FeedManager getFeedManager() {
        return (FeedManager) this.provideFeedManagerProvider.get();
    }

    public final AppInfoManager getAppInfoManager() {
        return (AppInfoManager) this.provideAppInfoManagerProvider.get();
    }

    public final CardManager getCardManager() {
        return (CardManager) this.provideCardManagerProvider.get();
    }

    public final ContactManager getContactManager() {
        return (ContactManager) this.providesContactManagerProvider.get();
    }

    public final FileManager getFileManager() {
        return (FileManager) this.providersFileManagerProvider.get();
    }

    public final DeliveryManager getDeliveryManager() {
        return (DeliveryManager) this.provideDeliveryManagerProvider.get();
    }

    public final CertificateManager getCertificateManager() {
        return (CertificateManager) this.provideCertificateManagerProvider.get();
    }

    public final DiscountCache getDiscountCache() {
        return (DiscountCache) this.provideDiscountsCacheProvider.get();
    }

    public final AppConfig getAppConfig() {
        return (AppConfig) this.providersAppConfigProvider.get();
    }

    public final AuthorizationStorage getAuthorizationStorage() {
        return (AuthorizationStorage) this.provideAuthStorageProvider.get();
    }

    public final RegistrationApi getRegistrationApi() {
        return (RegistrationApi) this.provideRegistrationApiProvider.get();
    }

    public final ProvidersApi getProvidersApi() {
        return (ProvidersApi) this.provideProvidersApiProvider.get();
    }

    public final AccountApi getAccountApi() {
        return (AccountApi) this.provideAccountApiProvider.get();
    }

    public final UserApi getUserApi() {
        return (UserApi) this.provideUserApiProvider.get();
    }

    public final MigrationApi getMigrationApi() {
        return (MigrationApi) this.provideMigrationApiProvider.get();
    }

    public final SexyLeadsApi getLeadsApi() {
        return (SexyLeadsApi) this.provideLeadsApiProvider.get();
    }

    public final RxTapAndPay getRxTapAndPay() {
        return (RxTapAndPay) this.provideTapAndPayProvider.get();
    }

    public final UiTapAndPay getUiTapAndPay() {
        return (UiTapAndPay) this.provideAndroidTapAndPayProvider.get();
    }

    public final RxSPay getRxSPay() {
        return (RxSPay) this.provideSPayProvider.get();
    }

    public final DeliveryApi getDeliveryApi() {
        return (DeliveryApi) this.provideDeliveryApiProvider.get();
    }

    public final YandexMapApi getYandexMapApi() {
        return (YandexMapApi) this.provideYandexApiProvider.get();
    }

    public final AnalyticsApi getAnalyticsApi() {
        return (AnalyticsApi) this.provideAnalyticsApiProvider.get();
    }

    public final MessageApi getMessageApi() {
        return (MessageApi) this.provideMessageApiProvider.get();
    }

    public final AgentsApi getAgentsApi() {
        return (AgentsApi) this.provideAgentsApiProvider.get();
    }

    public final DepositApi getDepositApi() {
        return (DepositApi) this.providesDepositApiProvider.get();
    }

    public final PhoneApi getPhoneApi() {
        return (PhoneApi) this.providePhoneApiProvider.get();
    }

    public final WidgetManager getWidgetManager() {
        return (WidgetManager) this.provideWidgetManagerProvider.get();
    }

    public final RocketAPI getRocketApi() {
        return (RocketAPI) this.provideRocketAPIProvider.get();
    }

    public final TariffsApi getTariffsApi() {
        return (TariffsApi) this.provideTariffsApiProvider.get();
    }

    public final PlasticsApi getPlasticApi() {
        return (PlasticsApi) this.providePlasticsApiProvider.get();
    }

    public final OperationApi getOperationApi() {
        return (OperationApi) this.provideOperationApiProvider.get();
    }

    public final TouchManager getTouchManager() {
        return (TouchManager) this.providesTouchManagerProvider.get();
    }

    public final GeolocationManager getGeolocationManager() {
        GeolocationManager provideAuthorization = this.geoLocationModule.provideAuthorization();
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideAuthorization != null) {
            return provideAuthorization;
        }
        throw new NullPointerException(str);
    }

    public final FireCMManager getFireCMManager() {
        return (FireCMManager) this.provideFireCMManagerProvider.get();
    }

    public final RocketShortcutManager getRocketShortcutManager() {
        return (RocketShortcutManager) this.providesRocketShortcutManagerProvider.get();
    }

    public final ShopApi getShopApi() {
        return (ShopApi) this.provideStoreApiProvider.get();
    }

    public final CartStorage getCartStorage() {
        return (CartStorage) this.provideCartStorageProvider.get();
    }

    public final Card2CardApi getCard2CardApi() {
        return (Card2CardApi) this.provideCard2CardApiProvider.get();
    }

    public final TemplateApi getTemplateApi() {
        return (TemplateApi) this.provideTemplateApiProvider.get();
    }

    public final TemplateManager getTemplateManager() {
        return (TemplateManager) this.provideTemplateManagerProvider.get();
    }

    public final Context getApplicationContext() {
        Context provideAppContext = this.androidModule.provideAppContext();
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideAppContext != null) {
            return provideAppContext;
        }
        throw new NullPointerException(str);
    }

    public final CafeApi getRocketCafeApi() {
        return (CafeApi) this.provideCafeApiProvider.get();
    }

    public final RootBeer getRootChecker() {
        return (RootBeer) this.provideRootCheckerProvider.get();
    }

    public final AndroidPayApi getAndroidPayApi() {
        HeaderManager headerManager = (HeaderManager) this.providersHeaderManagerProvider.get();
        Intrinsics.checkParameterIsNotNull(headerManager, "headerManager");
        Retrofit build = new OkClientRestAdapter(headerManager).create().build();
        Intrinsics.checkExpressionValueIsNotNull(build, "okClientRestAdapter.create().build()");
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (build == null) {
            throw new NullPointerException(str);
        }
        build = build;
        Intrinsics.checkParameterIsNotNull(build, "retrofit");
        Object create = build.create(AndroidPayApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(AndroidPayApi::class.java)");
        AndroidPayApi androidPayApi = (AndroidPayApi) create;
        str = "Cannot return null from a non-@Nullable @Provides method";
        if (androidPayApi != null) {
            return androidPayApi;
        }
        throw new NullPointerException(str);
    }

    public final LoginApi getLoginApi() {
        Retrofit provideRetrofitAdapterNoAuth = RetrofitModule.provideRetrofitAdapterNoAuth((HeaderManager) this.providersHeaderManagerProvider.get());
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideRetrofitAdapterNoAuth == null) {
            throw new NullPointerException(str);
        }
        provideRetrofitAdapterNoAuth = provideRetrofitAdapterNoAuth;
        Intrinsics.checkParameterIsNotNull(provideRetrofitAdapterNoAuth, "retrofit");
        Object create = provideRetrofitAdapterNoAuth.create(LoginApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(LoginApi::class.java)");
        LoginApi loginApi = (LoginApi) create;
        str = "Cannot return null from a non-@Nullable @Provides method";
        if (loginApi != null) {
            return loginApi;
        }
        throw new NullPointerException(str);
    }

    public final MoneyFormatter getMoneyFormatter() {
        Context provideAppContext = this.androidModule.provideAppContext();
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideAppContext == null) {
            throw new NullPointerException(str);
        }
        provideAppContext = provideAppContext;
        Authorization authorization = (Authorization) this.provideAuthorizationProvider2.get();
        CurrencyManager currencyManager = (CurrencyManager) this.provideCurrencyManagerProvider.get();
        Intrinsics.checkParameterIsNotNull(provideAppContext, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(currencyManager, "currencyManager");
        return new MoneyFormatter(provideAppContext, authorization, currencyManager);
    }

    public final MediaPlayer getMediaPlayer() {
        return AndroidModule.provideMediaPlayer();
    }

    public final FileTokenStorageImpl getTouchIdFileStorage() {
        Context provideAppContext = this.androidModule.provideAppContext();
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideAppContext == null) {
            throw new NullPointerException(str);
        }
        provideAppContext = provideAppContext;
        Intrinsics.checkParameterIsNotNull(provideAppContext, "context");
        return new FileTokenStorageImpl(provideAppContext);
    }

    public final RealmTouchTokenStorageImpl getRealmTouchIdStorage() {
        Context provideAppContext = this.androidModule.provideAppContext();
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideAppContext == null) {
            throw new NullPointerException(str);
        }
        provideAppContext = provideAppContext;
        KeyManager keyManager = (KeyManager) this.providesKeyManagerProvider.get();
        Intrinsics.checkParameterIsNotNull(provideAppContext, "context");
        Intrinsics.checkParameterIsNotNull(keyManager, "keyManager");
        return new RealmTouchTokenStorageImpl(provideAppContext, keyManager);
    }

    public final SharedPreferencesTokenStorageImpl getSharedPreferencesTouchIdStorage() {
        Context provideAppContext = this.androidModule.provideAppContext();
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideAppContext == null) {
            throw new NullPointerException(str);
        }
        provideAppContext = provideAppContext;
        Intrinsics.checkParameterIsNotNull(provideAppContext, "context");
        return new SharedPreferencesTokenStorageImpl(provideAppContext);
    }
}
