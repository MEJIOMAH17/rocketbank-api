.class public final Lru/rocketbank/core/dagger/component/DaggerRocketComponent;
.super Ljava/lang/Object;
.source "DaggerRocketComponent.java"

# interfaces
.implements Lru/rocketbank/core/dagger/component/RocketComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;
    }
.end annotation


# instance fields
.field private androidModule:Lru/rocketbank/core/dagger/AndroidModule;

.field private geoLocationModule:Lru/rocketbank/core/dagger/GeoLocationModule;

.field private provideAccountApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/AccountApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideAgentsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/AgentsApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideAnalyticsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/AnalyticsApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideAndroidTapAndPayProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/pay/google/UiTapAndPay;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

.field private provideAppInfoManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/AppInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppInfoStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AppInformationStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AuthorizationStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthorizationProvider$6c2cfc56:Lcom/mikepenz/materialize/R$layout;

.field private provideAuthorizationProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;"
        }
    .end annotation
.end field

.field private provideBankAccountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/BankAccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCafeApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/CafeApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideCard2CardApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/Card2CardApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideCardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/CardManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCartStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/model/shop/CartStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideCertificateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/security/CertificateManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCurrencyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/CurrencyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeliveryApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/DeliveryApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeliveryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/DeliveryManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDiscountsCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideFacebookLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/facebook/appevents/AppEventsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideFeedLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/loader/FeedLoader;",
            ">;"
        }
    .end annotation
.end field

.field private provideFeedManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/FeedManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideFireCMManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/FireCMManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideGoogleApiClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeadsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/SexyLeadsApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideMessageApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/MessageApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideMigrationApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/MigrationApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideNoAuthWidgetProvider$467fdcb4:Lkotlin/jvm/internal/Ref;

.field private provideOperationApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/OperationApi;",
            ">;"
        }
    .end annotation
.end field

.field private providePhoneApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/PhoneApi;",
            ">;"
        }
    .end annotation
.end field

.field private providePlasticsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/PlasticsApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideProvidersApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/ProvidersApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideRegistrationApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RegistrationApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideRetorofitAdapterWidgetProvider$1e83d28d:Lru/rocketbank/core/R$integer;

.field private provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

.field private provideRetrofitForYandexProvider$517c043d:Lru/rocketbank/core/R$mipmap;

.field private provideRocketAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;"
        }
    .end annotation
.end field

.field private provideRootCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/scottyab/rootbeer/RootBeer;",
            ">;"
        }
    .end annotation
.end field

.field private provideSPayProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/pay/samsung/RxSPay;",
            ">;"
        }
    .end annotation
.end field

.field private provideStoreApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/ShopApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideTapAndPayProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/pay/google/RxTapAndPay;",
            ">;"
        }
    .end annotation
.end field

.field private provideTariffsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/TariffsApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideTemplateApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/TemplateApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideTemplateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/TemplateManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/UserApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideWidgetManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/WidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideWidgetStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/WidgetStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideYandexApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/YandexMapApi;",
            ">;"
        }
    .end annotation
.end field

.field private providersAppConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/utils/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providersFileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/utils/fs/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private providersHeaderManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/HeaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesAnalyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/AnalyticsManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesAtmsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/AtmsManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesContactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/DataManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesDepositApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/DepositApi;",
            ">;"
        }
    .end annotation
.end field

.field private providesKeyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvider$1df21a27:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;

.field private providesRocketShortcutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/RocketShortcutManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesTouchManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/TouchManager;",
            ">;"
        }
    .end annotation
.end field

.field private restModule$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

.field private retrofitModule:Lru/rocketbank/core/dagger/RetrofitModule;

.field private touchIDModule$3af7dc09:Lru/rocketbank/core/R$raw;

.field private utilsModule$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;


# direct methods
.method private constructor <init>(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)V
    .locals 10

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;

    move-result-object v0

    .line 2022
    new-instance v1, Lcom/google/maps/android/R$style;

    invoke-direct {v1, v0}, Lcom/google/maps/android/R$style;-><init>(Lru/rocketbank/core/dagger/AndroidModule;)V

    .line 1320
    iput-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 1322
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$200(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/GeoLocationModule;

    move-result-object v0

    .line 2023
    new-instance v1, Lcom/mikepenz/materialize/R$layout;

    invoke-direct {v1, v0}, Lcom/mikepenz/materialize/R$layout;-><init>(Lru/rocketbank/core/dagger/GeoLocationModule;)V

    .line 1322
    iput-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider$6c2cfc56:Lcom/mikepenz/materialize/R$layout;

    .line 1326
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 2030
    new-instance v2, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Builder;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;)V

    .line 1324
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesKeyManagerProvider:Ljavax/inject/Provider;

    .line 1330
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesKeyManagerProvider:Ljavax/inject/Provider;

    .line 2031
    new-instance v2, Lru/rocketbank/core/R$style;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$style;-><init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;)V

    .line 1328
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppInfoStorageProvider:Ljavax/inject/Provider;

    .line 1334
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppInfoStorageProvider:Ljavax/inject/Provider;

    .line 2038
    new-instance v3, Lru/rocketbank/core/R$string;

    invoke-direct {v3, v0, v1, v2}, Lru/rocketbank/core/R$string;-><init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1332
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppInfoManagerProvider:Ljavax/inject/Provider;

    .line 1338
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesKeyManagerProvider:Ljavax/inject/Provider;

    .line 3030
    new-instance v2, Lru/rocketbank/core/manager/KeyManager$DefaultImpls;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/manager/KeyManager$DefaultImpls;-><init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;)V

    .line 1336
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthStorageProvider:Ljavax/inject/Provider;

    .line 1342
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider$6c2cfc56:Lcom/mikepenz/materialize/R$layout;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppInfoManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthStorageProvider:Ljavax/inject/Provider;

    .line 3047
    new-instance v4, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1340
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersHeaderManagerProvider:Ljavax/inject/Provider;

    .line 1348
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$500(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/RetrofitModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersHeaderManagerProvider:Ljavax/inject/Provider;

    .line 4030
    new-instance v2, Lru/rocketbank/core/R$layout;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$layout;-><init>(Lru/rocketbank/core/dagger/RetrofitModule;Ljavax/inject/Provider;)V

    .line 1347
    iput-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 1352
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 5029
    new-instance v2, Lru/rocketbank/core/R$dimen;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$dimen;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1350
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideUserApiProvider:Ljavax/inject/Provider;

    .line 1355
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$700(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/CurrencyModule;

    move-result-object v0

    .line 6024
    new-instance v1, Lcom/mikepenz/materialdrawer/R$id;

    invoke-direct {v1, v0}, Lcom/mikepenz/materialdrawer/R$id;-><init>(Lru/rocketbank/core/dagger/CurrencyModule;)V

    .line 1354
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCurrencyManagerProvider:Ljavax/inject/Provider;

    .line 1359
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 6030
    new-instance v2, Lokhttp3/internal/http/RequestLine;

    invoke-direct {v2, v0, v1}, Lokhttp3/internal/http/RequestLine;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1357
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideProvidersApiProvider:Ljavax/inject/Provider;

    .line 1363
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCurrencyManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideProvidersApiProvider:Ljavax/inject/Provider;

    .line 6038
    new-instance v3, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1361
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesDataManagerProvider:Ljavax/inject/Provider;

    .line 1367
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$800$5fb1cb1b(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 7030
    new-instance v2, Lcom/mikepenz/materialize/R$attr;

    invoke-direct {v2, v0, v1}, Lcom/mikepenz/materialize/R$attr;-><init>(Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;Ljavax/inject/Provider;)V

    .line 1365
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFacebookLoggerProvider:Ljavax/inject/Provider;

    .line 1371
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppInfoManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFacebookLoggerProvider:Ljavax/inject/Provider;

    .line 7046
    new-instance v4, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1369
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 1377
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v0

    .line 8024
    new-instance v1, Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;

    invoke-direct {v1, v0}, Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;-><init>(Lru/rocketbank/core/dagger/UserModule;)V

    .line 1376
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideBankAccountManagerProvider:Ljavax/inject/Provider;

    .line 1381
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    iget-object v4, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideUserApiProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthStorageProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesDataManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesAnalyticsManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideBankAccountManagerProvider:Ljavax/inject/Provider;

    .line 8068
    new-instance v0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;-><init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1379
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    .line 1391
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 9030
    new-instance v2, Lru/rocketbank/core/R$anim;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$anim;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1389
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    .line 1395
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$900$32be268(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mattprecious/swirl/R$drawable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    .line 9038
    new-instance v3, Lcom/mikepenz/materialdrawer/R;

    invoke-direct {v3, v0, v1, v2}, Lcom/mikepenz/materialdrawer/R;-><init>(Lcom/mattprecious/swirl/R$drawable;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1393
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesAtmsManagerProvider:Ljavax/inject/Provider;

    .line 1399
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 10030
    new-instance v2, Lme/grantland/widget/R;

    invoke-direct {v2, v0, v1}, Lme/grantland/widget/R;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1397
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideOperationApiProvider:Ljavax/inject/Provider;

    .line 1403
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1000$1cff59bd(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/R$color;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideOperationApiProvider:Ljavax/inject/Provider;

    .line 10038
    new-instance v3, Lcom/mikepenz/materialize/R$dimen;

    invoke-direct {v3, v0, v1, v2}, Lcom/mikepenz/materialize/R$dimen;-><init>(Lcom/mikepenz/materialize/R$color;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1401
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFeedLoaderProvider:Ljavax/inject/Provider;

    .line 1407
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1000$1cff59bd(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/R$color;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideOperationApiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFeedLoaderProvider:Ljavax/inject/Provider;

    .line 10045
    new-instance v4, Lcom/mikepenz/materialize/R$id;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/mikepenz/materialize/R$id;-><init>(Lcom/mikepenz/materialize/R$color;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1405
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFeedManagerProvider:Ljavax/inject/Provider;

    .line 1414
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1100$2559936f(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/R$attr;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    .line 11030
    new-instance v2, Lcom/mikepenz/materialdrawer/R$color;

    invoke-direct {v2, v0, v1}, Lcom/mikepenz/materialdrawer/R$color;-><init>(Lcom/mikepenz/materialdrawer/R$attr;Ljavax/inject/Provider;)V

    .line 1412
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCardManagerProvider:Ljavax/inject/Provider;

    .line 1418
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 11031
    new-instance v2, Lru/rocketbank/core/dagger/UtilsModule_ProvidesRocketShortcutManagerFactory;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/dagger/UtilsModule_ProvidesRocketShortcutManagerFactory;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;)V

    .line 1416
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesRocketShortcutManagerProvider:Ljavax/inject/Provider;

    .line 1422
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    iget-object v4, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    iget-object v6, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesRocketShortcutManagerProvider:Ljavax/inject/Provider;

    .line 11054
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CustomSheetPaymentInfo$Builder;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/samsungpay/v2/payment/CustomSheetPaymentInfo$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1420
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesContactManagerProvider:Ljavax/inject/Provider;

    .line 1428
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    .line 12022
    new-instance v1, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Address$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Address$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;)V

    .line 1428
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersAppConfigProvider:Ljavax/inject/Provider;

    .line 1432
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersAppConfigProvider:Ljavax/inject/Provider;

    .line 12038
    new-instance v3, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1430
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersFileManagerProvider:Ljavax/inject/Provider;

    .line 1435
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1200$36f13a2d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/R$layout;

    move-result-object v0

    .line 13024
    new-instance v1, Lcom/mikepenz/materialdrawer/R$string;

    invoke-direct {v1, v0}, Lcom/mikepenz/materialdrawer/R$string;-><init>(Lcom/mikepenz/materialdrawer/R$layout;)V

    .line 1434
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideDeliveryManagerProvider:Ljavax/inject/Provider;

    .line 1439
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1300$635728fa(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/R$dimen;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 13031
    new-instance v2, Lcom/mikepenz/materialdrawer/R$drawable;

    invoke-direct {v2, v0, v1}, Lcom/mikepenz/materialdrawer/R$drawable;-><init>(Lcom/mikepenz/materialdrawer/R$dimen;Ljavax/inject/Provider;)V

    .line 1437
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCertificateManagerProvider:Ljavax/inject/Provider;

    .line 1442
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/DiscountsModule;

    move-result-object v0

    .line 14022
    new-instance v1, Lcom/mikepenz/materialdrawer/R$style;

    invoke-direct {v1, v0}, Lcom/mikepenz/materialdrawer/R$style;-><init>(Lru/rocketbank/core/dagger/DiscountsModule;)V

    .line 1441
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideDiscountsCacheProvider:Ljavax/inject/Provider;

    .line 1446
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 14030
    new-instance v2, Lru/rocketbank/core/R;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1444
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRegistrationApiProvider:Ljavax/inject/Provider;

    .line 1450
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 15030
    new-instance v2, Lcom/mikepenz/materialize/util/UIUtils;

    invoke-direct {v2, v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1448
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAccountApiProvider:Ljavax/inject/Provider;

    .line 1454
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 16030
    new-instance v2, Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;

    invoke-direct {v2, v0, v1}, Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1452
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideMigrationApiProvider:Ljavax/inject/Provider;

    .line 1458
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 17029
    new-instance v2, Ljp/wasabeef/glide/transformations/internal/RSBlur;

    invoke-direct {v2, v0, v1}, Ljp/wasabeef/glide/transformations/internal/RSBlur;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1456
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideLeadsApiProvider:Ljavax/inject/Provider;

    .line 1459
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->restModule$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

    .line 1460
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$500(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/RetrofitModule;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->retrofitModule:Lru/rocketbank/core/dagger/RetrofitModule;

    .line 1464
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 17030
    new-instance v2, Lcom/jakewharton/rxbinding/support/v7/widget/RxSearchView;

    invoke-direct {v2, v0, v1}, Lcom/jakewharton/rxbinding/support/v7/widget/RxSearchView;-><init>(Lru/rocketbank/core/dagger/AndroidModule;Ljavax/inject/Provider;)V

    .line 1462
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideGoogleApiClientProvider:Ljavax/inject/Provider;

    .line 1468
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideGoogleApiClientProvider:Ljavax/inject/Provider;

    .line 18030
    new-instance v2, Lcom/mattprecious/swirl/R;

    invoke-direct {v2, v0, v1}, Lcom/mattprecious/swirl/R;-><init>(Lru/rocketbank/core/dagger/AndroidModule;Ljavax/inject/Provider;)V

    .line 1466
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTapAndPayProvider:Ljavax/inject/Provider;

    .line 1472
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideGoogleApiClientProvider:Ljavax/inject/Provider;

    .line 19030
    new-instance v2, Lcom/google/maps/android/R$layout;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/android/R$layout;-><init>(Lru/rocketbank/core/dagger/AndroidModule;Ljavax/inject/Provider;)V

    .line 1470
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAndroidTapAndPayProvider:Ljavax/inject/Provider;

    .line 1476
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 20029
    new-instance v2, Lcom/jakewharton/rxbinding/widget/RxTextView;

    invoke-direct {v2, v0, v1}, Lcom/jakewharton/rxbinding/widget/RxTextView;-><init>(Lru/rocketbank/core/dagger/AndroidModule;Ljavax/inject/Provider;)V

    .line 1474
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideSPayProvider:Ljavax/inject/Provider;

    .line 1480
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 20030
    new-instance v2, Ljp/wasabeef/glide/transformations/internal/FastBlur;

    invoke-direct {v2, v0, v1}, Ljp/wasabeef/glide/transformations/internal/FastBlur;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1478
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideDeliveryApiProvider:Ljavax/inject/Provider;

    .line 1482
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$500(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/RetrofitModule;

    move-result-object v0

    .line 21023
    new-instance v1, Lru/rocketbank/core/R$mipmap;

    invoke-direct {v1, v0}, Lru/rocketbank/core/R$mipmap;-><init>(Lru/rocketbank/core/dagger/RetrofitModule;)V

    .line 1482
    iput-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitForYandexProvider$517c043d:Lru/rocketbank/core/R$mipmap;

    .line 1486
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitForYandexProvider$517c043d:Lru/rocketbank/core/R$mipmap;

    .line 21030
    new-instance v2, Lru/rocketbank/core/R$drawable;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$drawable;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1484
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideYandexApiProvider:Ljavax/inject/Provider;

    .line 1490
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 22030
    new-instance v2, Ldagger/internal/ReferenceReleasingProviderManager;

    invoke-direct {v2, v0, v1}, Ldagger/internal/ReferenceReleasingProviderManager;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1488
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAnalyticsApiProvider:Ljavax/inject/Provider;

    .line 1494
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 23030
    new-instance v2, Lkotlin/collections/SlidingWindowKt;

    invoke-direct {v2, v0, v1}, Lkotlin/collections/SlidingWindowKt;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1492
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideMessageApiProvider:Ljavax/inject/Provider;

    .line 1498
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 24030
    new-instance v2, Ldagger/internal/MembersInjectors;

    invoke-direct {v2, v0, v1}, Ldagger/internal/MembersInjectors;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1496
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAgentsApiProvider:Ljavax/inject/Provider;

    .line 1502
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 25030
    new-instance v2, Lru/rocketbank/core/R$id;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$id;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1500
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesDepositApiProvider:Ljavax/inject/Provider;

    .line 1506
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 26029
    new-instance v2, Lme/philio/pinentry/R;

    invoke-direct {v2, v0, v1}, Lme/philio/pinentry/R;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1504
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providePhoneApiProvider:Ljavax/inject/Provider;

    .line 1508
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v0

    .line 27022
    new-instance v1, Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-direct {v1, v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;-><init>(Lru/rocketbank/core/dagger/UserModule;)V

    .line 1508
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideWidgetStorageProvider:Ljavax/inject/Provider;

    .line 1511
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    iget-object v3, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCurrencyManagerProvider:Ljavax/inject/Provider;

    .line 27045
    new-instance v4, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1510
    iput-object v4, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesProvider$1df21a27:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;

    .line 1517
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$500(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/RetrofitModule;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersHeaderManagerProvider:Ljavax/inject/Provider;

    .line 28031
    new-instance v2, Lru/rocketbank/core/R$integer;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$integer;-><init>(Lru/rocketbank/core/dagger/RetrofitModule;Ljavax/inject/Provider;)V

    .line 1516
    iput-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetorofitAdapterWidgetProvider$1e83d28d:Lru/rocketbank/core/R$integer;

    .line 1520
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetorofitAdapterWidgetProvider$1e83d28d:Lru/rocketbank/core/R$integer;

    .line 29030
    new-instance v2, Lkotlin/jvm/internal/Ref;

    invoke-direct {v2, v0, v1}, Lkotlin/jvm/internal/Ref;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1519
    iput-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideNoAuthWidgetProvider$467fdcb4:Lkotlin/jvm/internal/Ref;

    .line 1524
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v4

    iget-object v5, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    iget-object v6, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    iget-object v7, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideWidgetStorageProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesProvider$1df21a27:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;

    iget-object v9, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideNoAuthWidgetProvider$467fdcb4:Lkotlin/jvm/internal/Ref;

    .line 29061
    new-instance v0, Lru/rocketbank/core/utils/ParcelableUtilsKt;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lru/rocketbank/core/utils/ParcelableUtilsKt;-><init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1522
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideWidgetManagerProvider:Ljavax/inject/Provider;

    .line 1533
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 30030
    new-instance v2, Lru/rocketbank/core/R$bool;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$bool;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1531
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTariffsApiProvider:Ljavax/inject/Provider;

    .line 1537
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 31030
    new-instance v2, Lme/philio/pinentry/R$attr;

    invoke-direct {v2, v0, v1}, Lme/philio/pinentry/R$attr;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1535
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providePlasticsApiProvider:Ljavax/inject/Provider;

    .line 1538
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->utilsModule$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 1542
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 31038
    new-instance v3, Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;

    invoke-direct {v3, v0, v1, v2}, Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;-><init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1540
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesTouchManagerProvider:Ljavax/inject/Provider;

    .line 1543
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$200(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/GeoLocationModule;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->geoLocationModule:Lru/rocketbank/core/dagger/GeoLocationModule;

    .line 1547
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1500$776fd196(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/color/Material;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersHeaderManagerProvider:Ljavax/inject/Provider;

    .line 31045
    new-instance v4, Lcom/mikepenz/materialize/color/Material$Elements;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/mikepenz/materialize/color/Material$Elements;-><init>(Lcom/mikepenz/materialize/color/Material;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1545
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFireCMManagerProvider:Ljavax/inject/Provider;

    .line 1554
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 32029
    new-instance v2, Lru/rocketbank/core/R$attr;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$attr;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1552
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideStoreApiProvider:Ljavax/inject/Provider;

    .line 1556
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;

    move-result-object v0

    .line 33022
    new-instance v1, Lru/rocketbank/core/utils/CollectionUtilsKt;

    invoke-direct {v1, v0}, Lru/rocketbank/core/utils/CollectionUtilsKt;-><init>(Lru/rocketbank/core/dagger/UserModule;)V

    .line 1556
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCartStorageProvider:Ljavax/inject/Provider;

    .line 1560
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 33030
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;

    invoke-direct {v2, v0, v1}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1558
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCard2CardApiProvider:Ljavax/inject/Provider;

    .line 1564
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 34030
    new-instance v2, Lru/rocketbank/core/R$color;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$color;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1562
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTemplateApiProvider:Ljavax/inject/Provider;

    .line 1568
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1600$61e306e7(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lkotlin/ExceptionsKt__ExceptionsKt;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    .line 34031
    new-instance v2, Lru/rocketbank/core/R$plurals;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/R$plurals;-><init>(Lkotlin/ExceptionsKt__ExceptionsKt;Ljavax/inject/Provider;)V

    .line 1566
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTemplateManagerProvider:Ljavax/inject/Provider;

    .line 1569
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    .line 1573
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRetrofitAdapterProvider$7ed9b1f8:Lru/rocketbank/core/R$layout;

    .line 35029
    new-instance v2, Lio/card/payment/ui/ActivityHelper;

    invoke-direct {v2, v0, v1}, Lio/card/payment/ui/ActivityHelper;-><init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V

    .line 1571
    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCafeApiProvider:Ljavax/inject/Provider;

    .line 1574
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$1700$5f52fe5d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/R$raw;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->touchIDModule$3af7dc09:Lru/rocketbank/core/R$raw;

    .line 1578
    invoke-static {p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppContextProvider$143db588:Lcom/google/maps/android/R$style;

    .line 35030
    new-instance v1, Lcom/jakewharton/rxbinding/view/RxView;

    invoke-direct {v1, p1, v0}, Lcom/jakewharton/rxbinding/view/RxView;-><init>(Lru/rocketbank/core/dagger/AndroidModule;Ljavax/inject/Provider;)V

    .line 1576
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRootCheckerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method synthetic constructor <init>(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;B)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;-><init>(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)V

    return-void
.end method

.method public static builder()Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;
    .locals 2

    .line 299
    new-instance v0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final getAccountApi()Lru/rocketbank/core/network/api/AccountApi;
    .locals 1

    .line 673
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAccountApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/AccountApi;

    return-object v0
.end method

.method public final getAgentsApi()Lru/rocketbank/core/network/api/AgentsApi;
    .locals 1

    .line 734
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAgentsApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/AgentsApi;

    return-object v0
.end method

.method public final getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;
    .locals 1

    .line 724
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAnalyticsApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/AnalyticsApi;

    return-object v0
.end method

.method public final getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;
    .locals 1

    .line 598
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesAnalyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/AnalyticsManager;

    return-object v0
.end method

.method public final getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;
    .locals 2

    .line 35303
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersHeaderManagerProvider:Ljavax/inject/Provider;

    .line 35304
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/HeaderManager;

    const-string v1, "headerManager"

    .line 36036
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36043
    new-instance v1, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;

    invoke-direct {v1, v0}, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;-><init>(Lru/rocketbank/core/manager/HeaderManager;)V

    .line 36044
    invoke-virtual {v1}, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;->create()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "okClientRestAdapter.create().build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 36048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36035
    :cond_0
    check-cast v0, Lretrofit2/Retrofit;

    const-string v1, "retrofit"

    .line 37035
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37153
    const-class v1, Lru/rocketbank/core/network/api/AndroidPayApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(AndroidPayApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/network/api/AndroidPayApi;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_1

    .line 38048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37034
    :cond_1
    check-cast v0, Lru/rocketbank/core/network/api/AndroidPayApi;

    return-object v0
.end method

.method public final getAppConfig()Lru/rocketbank/core/utils/AppConfig;
    .locals 1

    .line 653
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersAppConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/AppConfig;

    return-object v0
.end method

.method public final getAppInfoManager()Lru/rocketbank/core/manager/AppInfoManager;
    .locals 1

    .line 618
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAppInfoManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/AppInfoManager;

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 841
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    .line 45027
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/AndroidModule;->provideAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 45048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45026
    :cond_0
    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final getAtmsManager()Lru/rocketbank/core/manager/AtmsManager;
    .locals 1

    .line 593
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesAtmsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/AtmsManager;

    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 583
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final getAuthorizationStorage()Lru/rocketbank/core/user/AuthorizationStorage;
    .locals 1

    .line 658
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/AuthorizationStorage;

    return-object v0
.end method

.method public final getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;
    .locals 1

    .line 826
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCard2CardApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/Card2CardApi;

    return-object v0
.end method

.method public final getCardManager()Lru/rocketbank/core/manager/CardManager;
    .locals 1

    .line 623
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCardManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/CardManager;

    return-object v0
.end method

.method public final getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;
    .locals 1

    .line 821
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCartStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/shop/CartStorage;

    return-object v0
.end method

.method public final getCertificateManager()Lru/rocketbank/core/manager/security/CertificateManager;
    .locals 1

    .line 643
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCertificateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/security/CertificateManager;

    return-object v0
.end method

.method public final getContactManager()Lru/rocketbank/core/manager/ContactManager;
    .locals 1

    .line 628
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesContactManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/ContactManager;

    return-object v0
.end method

.method public final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 1

    .line 588
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCurrencyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/CurrencyManager;

    return-object v0
.end method

.method public final getDataManager()Lru/rocketbank/core/manager/DataManager;
    .locals 1

    .line 603
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/DataManager;

    return-object v0
.end method

.method public final getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;
    .locals 1

    .line 714
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideDeliveryApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/DeliveryApi;

    return-object v0
.end method

.method public final getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;
    .locals 1

    .line 638
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideDeliveryManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/DeliveryManager;

    return-object v0
.end method

.method public final getDepositApi()Lru/rocketbank/core/network/api/DepositApi;
    .locals 1

    .line 739
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesDepositApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/DepositApi;

    return-object v0
.end method

.method public final getDiscountCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;
    .locals 1

    .line 648
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideDiscountsCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    return-object v0
.end method

.method public final getFeedManager()Lru/rocketbank/core/manager/FeedManager;
    .locals 1

    .line 613
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFeedManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/FeedManager;

    return-object v0
.end method

.method public final getFileManager()Lru/rocketbank/core/utils/fs/FileManager;
    .locals 1

    .line 633
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersFileManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/fs/FileManager;

    return-object v0
.end method

.method public final getFireCMManager()Lru/rocketbank/core/manager/FireCMManager;
    .locals 1

    .line 806
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideFireCMManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/FireCMManager;

    return-object v0
.end method

.method public final getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;
    .locals 2

    .line 800
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->geoLocationModule:Lru/rocketbank/core/dagger/GeoLocationModule;

    .line 44028
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/GeoLocationModule;->provideAuthorization()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 44048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44027
    :cond_0
    check-cast v0, Lru/rocketbank/core/manager/GeolocationManager;

    return-object v0
.end method

.method public final getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;
    .locals 1

    .line 608
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersHeaderManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/HeaderManager;

    return-object v0
.end method

.method public final getLeadsApi()Lru/rocketbank/core/network/api/SexyLeadsApi;
    .locals 1

    .line 688
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideLeadsApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/SexyLeadsApi;

    return-object v0
.end method

.method public final getLoginApi()Lru/rocketbank/core/network/api/LoginApi;
    .locals 2

    .line 38308
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providersHeaderManagerProvider:Ljavax/inject/Provider;

    .line 38309
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/HeaderManager;

    .line 39036
    invoke-static {v0}, Lru/rocketbank/core/dagger/RetrofitModule;->provideRetrofitAdapterNoAuth(Lru/rocketbank/core/manager/HeaderManager;)Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 39048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39035
    :cond_0
    check-cast v0, Lretrofit2/Retrofit;

    const-string v1, "retrofit"

    .line 40035
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40087
    const-class v1, Lru/rocketbank/core/network/api/LoginApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(LoginApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/network/api/LoginApi;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_1

    .line 41048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40034
    :cond_1
    check-cast v0, Lru/rocketbank/core/network/api/LoginApi;

    return-object v0
.end method

.method public final getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 46027
    invoke-static {}, Lru/rocketbank/core/dagger/AndroidModule;->provideMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 46026
    check-cast v0, Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public final getMessageApi()Lru/rocketbank/core/network/api/MessageApi;
    .locals 1

    .line 729
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideMessageApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/MessageApi;

    return-object v0
.end method

.method public final getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;
    .locals 1

    .line 683
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideMigrationApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/MigrationApi;

    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 4

    .line 41841
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    .line 42027
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/AndroidModule;->provideAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 42048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42026
    :cond_0
    check-cast v0, Landroid/content/Context;

    .line 788
    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAuthorizationProvider2:Ljavax/inject/Provider;

    .line 789
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/user/Authorization;

    iget-object v2, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCurrencyManagerProvider:Ljavax/inject/Provider;

    .line 790
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/manager/CurrencyManager;

    const-string v3, "context"

    .line 42055
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authorization"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "currencyManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43036
    new-instance v3, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v3, v0, v1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    .line 42054
    check-cast v3, Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v3
.end method

.method public final getOperationApi()Lru/rocketbank/core/network/api/OperationApi;
    .locals 1

    .line 781
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideOperationApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/OperationApi;

    return-object v0
.end method

.method public final getPhoneApi()Lru/rocketbank/core/network/api/PhoneApi;
    .locals 1

    .line 750
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providePhoneApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/PhoneApi;

    return-object v0
.end method

.method public final getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;
    .locals 1

    .line 776
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providePlasticsApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/PlasticsApi;

    return-object v0
.end method

.method public final getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;
    .locals 1

    .line 668
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideProvidersApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/ProvidersApi;

    return-object v0
.end method

.method public final getRealmTouchIdStorage()Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;
    .locals 3

    .line 49841
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    .line 50027
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/AndroidModule;->provideAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 50029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50026
    :cond_0
    check-cast v0, Landroid/content/Context;

    .line 868
    iget-object v1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesKeyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/manager/KeyManager;

    const-string v2, "context"

    .line 50033
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "keyManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50034
    new-instance v2, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;-><init>(Landroid/content/Context;Lru/rocketbank/core/manager/KeyManager;)V

    .line 50032
    check-cast v2, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;

    return-object v2
.end method

.method public final getRegistrationApi()Lru/rocketbank/core/network/api/RegistrationApi;
    .locals 1

    .line 663
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRegistrationApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/RegistrationApi;

    return-object v0
.end method

.method public final getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 1

    .line 766
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRocketAPIProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/RocketAPI;

    return-object v0
.end method

.method public final getRocketCafeApi()Lru/rocketbank/core/network/api/CafeApi;
    .locals 1

    .line 856
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideCafeApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/CafeApi;

    return-object v0
.end method

.method public final getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;
    .locals 1

    .line 811
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesRocketShortcutManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/RocketShortcutManager;

    return-object v0
.end method

.method public final getRootChecker()Lcom/scottyab/rootbeer/RootBeer;
    .locals 1

    .line 879
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideRootCheckerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scottyab/rootbeer/RootBeer;

    return-object v0
.end method

.method public final getRxSPay()Lru/rocketbank/core/pay/samsung/RxSPay;
    .locals 1

    .line 709
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideSPayProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/pay/samsung/RxSPay;

    return-object v0
.end method

.method public final getRxTapAndPay()Lru/rocketbank/core/pay/google/RxTapAndPay;
    .locals 1

    .line 699
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTapAndPayProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/pay/google/RxTapAndPay;

    return-object v0
.end method

.method public final getSharedPreferencesTouchIdStorage()Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;
    .locals 2

    .line 50039
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    .line 50041
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/AndroidModule;->provideAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 50043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50040
    :cond_0
    check-cast v0, Landroid/content/Context;

    const-string v1, "context"

    .line 50047
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50048
    new-instance v1, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;

    invoke-direct {v1, v0}, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;-><init>(Landroid/content/Context;)V

    .line 50046
    check-cast v1, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;

    return-object v1
.end method

.method public final getShopApi()Lru/rocketbank/core/network/api/ShopApi;
    .locals 1

    .line 816
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideStoreApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/ShopApi;

    return-object v0
.end method

.method public final getTariffsApi()Lru/rocketbank/core/network/api/TariffsApi;
    .locals 1

    .line 771
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTariffsApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/TariffsApi;

    return-object v0
.end method

.method public final getTemplateApi()Lru/rocketbank/core/network/api/TemplateApi;
    .locals 1

    .line 831
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTemplateApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/TemplateApi;

    return-object v0
.end method

.method public final getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;
    .locals 1

    .line 836
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideTemplateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/TemplateManager;

    return-object v0
.end method

.method public final getTouchIdFileStorage()Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;
    .locals 2

    .line 46841
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    .line 47027
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/AndroidModule;->provideAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 47048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47026
    :cond_0
    check-cast v0, Landroid/content/Context;

    const-string v1, "context"

    .line 48037
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49029
    new-instance v1, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;

    invoke-direct {v1, v0}, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;-><init>(Landroid/content/Context;)V

    .line 48036
    check-cast v1, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;

    return-object v1
.end method

.method public final getTouchManager()Lru/rocketbank/core/manager/TouchManager;
    .locals 1

    .line 795
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->providesTouchManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/TouchManager;

    return-object v0
.end method

.method public final getUiTapAndPay()Lru/rocketbank/core/pay/google/UiTapAndPay;
    .locals 1

    .line 704
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideAndroidTapAndPayProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/pay/google/UiTapAndPay;

    return-object v0
.end method

.method public final getUserApi()Lru/rocketbank/core/network/api/UserApi;
    .locals 1

    .line 678
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideUserApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/UserApi;

    return-object v0
.end method

.method public final getWidgetManager()Lru/rocketbank/core/manager/WidgetManager;
    .locals 1

    .line 755
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideWidgetManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/WidgetManager;

    return-object v0
.end method

.method public final getYandexMapApi()Lru/rocketbank/core/network/api/YandexMapApi;
    .locals 1

    .line 719
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->provideYandexApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/YandexMapApi;

    return-object v0
.end method
