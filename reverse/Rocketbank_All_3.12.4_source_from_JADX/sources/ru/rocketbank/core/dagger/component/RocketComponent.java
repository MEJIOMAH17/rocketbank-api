package ru.rocketbank.core.dagger.component;

import android.content.Context;
import android.media.MediaPlayer;
import com.scottyab.rootbeer.RootBeer;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.AppInfoManager;
import ru.rocketbank.core.manager.AtmsManager;
import ru.rocketbank.core.manager.CardManager;
import ru.rocketbank.core.manager.ContactManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.DeliveryManager;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FireCMManager;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.manager.RocketShortcutManager;
import ru.rocketbank.core.manager.TemplateManager;
import ru.rocketbank.core.manager.TouchManager;
import ru.rocketbank.core.manager.WidgetManager;
import ru.rocketbank.core.manager.loader.cacher.discounts.DiscountCache;
import ru.rocketbank.core.manager.security.CertificateManager;
import ru.rocketbank.core.manager.security.storage.FileTokenStorageImpl;
import ru.rocketbank.core.manager.security.storage.RealmTouchTokenStorageImpl;
import ru.rocketbank.core.manager.security.storage.SharedPreferencesTokenStorageImpl;
import ru.rocketbank.core.model.shop.CartStorage;
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
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.user.AuthorizationStorage;
import ru.rocketbank.core.utils.AppConfig;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.fs.FileManager;

/* compiled from: RocketComponent.kt */
public interface RocketComponent {
    AccountApi getAccountApi();

    AgentsApi getAgentsApi();

    AnalyticsApi getAnalyticsApi();

    AnalyticsManager getAnalyticsManager();

    AndroidPayApi getAndroidPayApi();

    AppConfig getAppConfig();

    AppInfoManager getAppInfoManager();

    Context getApplicationContext();

    AtmsManager getAtmsManager();

    Authorization getAuthorization();

    AuthorizationStorage getAuthorizationStorage();

    Card2CardApi getCard2CardApi();

    CardManager getCardManager();

    CartStorage getCartStorage();

    CertificateManager getCertificateManager();

    ContactManager getContactManager();

    CurrencyManager getCurrencyManager();

    DataManager getDataManager();

    DeliveryApi getDeliveryApi();

    DeliveryManager getDeliveryManager();

    DepositApi getDepositApi();

    DiscountCache getDiscountCache();

    FeedManager getFeedManager();

    FileManager getFileManager();

    FireCMManager getFireCMManager();

    GeolocationManager getGeolocationManager();

    HeaderManager getHeaderManager();

    SexyLeadsApi getLeadsApi();

    LoginApi getLoginApi();

    MediaPlayer getMediaPlayer();

    MessageApi getMessageApi();

    MigrationApi getMigrationApi();

    MoneyFormatter getMoneyFormatter();

    OperationApi getOperationApi();

    PhoneApi getPhoneApi();

    PlasticsApi getPlasticApi();

    ProvidersApi getProvidersApi();

    RealmTouchTokenStorageImpl getRealmTouchIdStorage();

    RegistrationApi getRegistrationApi();

    RocketAPI getRocketApi();

    CafeApi getRocketCafeApi();

    RocketShortcutManager getRocketShortcutManager();

    RootBeer getRootChecker();

    RxSPay getRxSPay();

    RxTapAndPay getRxTapAndPay();

    SharedPreferencesTokenStorageImpl getSharedPreferencesTouchIdStorage();

    ShopApi getShopApi();

    TariffsApi getTariffsApi();

    TemplateApi getTemplateApi();

    TemplateManager getTemplateManager();

    FileTokenStorageImpl getTouchIdFileStorage();

    TouchManager getTouchManager();

    UiTapAndPay getUiTapAndPay();

    UserApi getUserApi();

    WidgetManager getWidgetManager();

    YandexMapApi getYandexMapApi();
}
