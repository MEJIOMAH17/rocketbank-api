.class public abstract Lru/rocketbank/r2d2/activities/AbstractActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AbstractActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field public static final CARD_SCAN_REQUEST_CODE:I = 0xa

.field public static final PERMISSIONS_NFC:I = 0xa

.field private static final REQUEST_PERMISSSIONS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractActivity"

.field private static final USER_MODEL:Ljava/lang/String; = "USER_MODEL"


# instance fields
.field protected analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

.field protected authorization:Lru/rocketbank/core/user/Authorization;

.field protected feedManager:Lru/rocketbank/core/manager/FeedManager;

.field private handler:Landroid/os/Handler;

.field private localBus:Lde/greenrobot/event/EventBus;

.field private progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

.field private registerEventBusRunnable:Ljava/lang/Runnable;

.field protected rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

.field private userSubsctiption:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 45
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->localBus:Lde/greenrobot/event/EventBus;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->handler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lru/rocketbank/r2d2/activities/AbstractActivity$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/AbstractActivity$2;-><init>(Lru/rocketbank/r2d2/activities/AbstractActivity;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->registerEventBusRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private subscribeToUser()V
    .locals 2

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/AbstractActivity$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/AbstractActivity$1;-><init>(Lru/rocketbank/r2d2/activities/AbstractActivity;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->userSubsctiption:Lrx/Subscription;

    return-void
.end method


# virtual methods
.method protected final findView(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ">(I)TE;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getApp()Lru/rocketbank/r2d2/RocketApplication;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/RocketApplication;

    return-object v0
.end method

.method public getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public getFeedManager()Lru/rocketbank/core/manager/FeedManager;
    .locals 1

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    return-object v0
.end method

.method public getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;
    .locals 1

    .line 68
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->localBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 1

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-object v0
.end method

.method protected getStatusBarHeight()I
    .locals 4

    .line 166
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideProgressDialog()V
    .locals 1

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 317
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 341
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "io.card.payment.scanResult"

    .line 344
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "io.card.payment.scanResult"

    .line 345
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/card/payment/CreditCard;

    .line 347
    new-instance p2, Lru/rocketbank/core/nfc/CardDataRaw;

    invoke-direct {p2}, Lru/rocketbank/core/nfc/CardDataRaw;-><init>()V

    .line 348
    iget-object p3, p1, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/nfc/CardDataRaw;->setPan(Ljava/lang/String;)V

    .line 349
    iget p3, p1, Lio/card/payment/CreditCard;->expiryMonth:I

    invoke-virtual {p2, p3}, Lru/rocketbank/core/nfc/CardDataRaw;->setMonth(I)V

    .line 350
    iget p1, p1, Lio/card/payment/CreditCard;->expiryYear:I

    invoke-virtual {p2, p1}, Lru/rocketbank/core/nfc/CardDataRaw;->setYear(I)V

    .line 352
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackStackChanged()V
    .locals 1

    .line 324
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 325
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onFragmentChanged(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 196
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    .line 197
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 198
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    if-eqz p1, :cond_0

    const-string v0, "USER_MODEL"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/UserModel;

    .line 202
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 205
    :cond_0
    invoke-static {p0}, Lru/rocketbank/core/manager/AnalyticsManager;->startActivity(Landroid/app/Activity;)V

    .line 206
    invoke-static {p0}, Lru/rocketbank/r2d2/helpers/UIHelper;->setActivity(Landroid/app/Activity;)V

    .line 208
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->registerEventBusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 246
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 248
    invoke-static {p0}, Lru/rocketbank/core/manager/AnalyticsManager;->stopActivity(Landroid/app/Activity;)V

    .line 250
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->registerEventBusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->unregisterEventBus()V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/model/RequestPermissionEvent;)V
    .locals 7

    .line 130
    invoke-virtual {p1}, Lru/rocketbank/core/model/RequestPermissionEvent;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 134
    invoke-static {p0, v5}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p1}, Lru/rocketbank/core/model/RequestPermissionEvent;->getPermissions()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 147
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 148
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    invoke-static {p0, p1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method protected onFragmentChanged(I)V
    .locals 2

    const-string v0, "AbstractActivity"

    const-string v1, "Fragment is changed "

    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 331
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 334
    sget-object v0, Lru/rocketbank/r2d2/utils/NfcInputCard;->Companion:Lru/rocketbank/r2d2/utils/NfcInputCard$Companion;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/NfcInputCard$Companion;->handleIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 178
    invoke-static {p0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 183
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 237
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 238
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->unregisterEventBus()V

    .line 239
    invoke-static {}, Lru/rocketbank/r2d2/RocketHandler;->getInstance()Lru/rocketbank/r2d2/RocketHandler;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketHandler;->onPause()V

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->userSubsctiption:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->unsubscribe(Lrx/Subscription;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 157
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/ResultPermissionEvent;

    invoke-direct {v1, p1, p2, p3}, Lru/rocketbank/core/events/ResultPermissionEvent;-><init>(I[Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 227
    invoke-static {p0}, Lru/rocketbank/r2d2/helpers/UIHelper;->setActivity(Landroid/app/Activity;)V

    .line 228
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->registerEventBus()V

    .line 229
    invoke-static {}, Lru/rocketbank/r2d2/RocketHandler;->getInstance()Lru/rocketbank/r2d2/RocketHandler;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketHandler;->onResume()V

    .line 231
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->subscribeToUser()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    const-string v1, "USER_MODEL"

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 94
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    return-void
.end method

.method protected registerEventBus()V
    .locals 1

    .line 260
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->localBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->localBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public showProgressDialog()V
    .locals 3

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    .line 286
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 290
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 298
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    .line 299
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->progressDialog:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 303
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public takeAShot()V
    .locals 3

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/card/payment/CardIOActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "io.card.payment.requireExpiry"

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.requireCVV"

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.requirePostalCode"

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.useCardIOLogo"

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.suppressManual"

    const/4 v2, 0x1

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.hideLogo"

    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.suppressConfirmation"

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 370
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected unregisterEventBus()V
    .locals 1

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->localBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity;->localBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final unsubscribe(Lrx/Subscription;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    return-void
.end method
