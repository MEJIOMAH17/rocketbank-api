.class public final Lru/rocketbank/r2d2/root/card/CardDetailFragment;
.super Lru/rocketbank/r2d2/fragments/ParallaxFragment;
.source "CardDetailFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;
.implements Lru/rocketbank/r2d2/root/card/binding/CardDetailView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardDetailFragment.kt\nru/rocketbank/r2d2/root/card/CardDetailFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,494:1\n1519#2,2:495\n*E\n*S KotlinDebug\n*F\n+ 1 CardDetailFragment.kt\nru/rocketbank/r2d2/root/card/CardDetailFragment\n*L\n259#1,2:495\n*E\n"
.end annotation


# static fields
.field private static final CARD_EXTRACTS:Ljava/lang/String; = "CARD_EXTRACTS"

.field private static final CARD_TOKEN:Ljava/lang/String; = "CARD_TOKEN"

.field public static final Companion:Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;

.field private static final PLASTIC_TOKEN:Ljava/lang/String; = "PLASTIC_TOKEN"

.field public static final REQUEST_AP_ADD_CARD:I = 0xb25f

.field public static final REQUEST_AP_CREATE_WALLET:I = 0xb261

.field public static final REQUEST_AP_MANAGE_CARD:I = 0xb25d

.field public static final REQUEST_SP_ADD_CARD:I = 0xb264

.field private static final TAG:Ljava/lang/String; = "CardDetail"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private androidPayIsAdd:Z

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

.field private final cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

.field private cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

.field private changePin:Lru/rocketbank/core/model/dto/ChangePin;

.field private extracts:Z

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private isCardDefault:Z

.field private final navigationOnClickListener:Landroid/view/View$OnClickListener;

.field private notificationDialog:Lru/rocketbank/r2d2/widgets/NotificationDialog;

.field private plasticToken:Ljava/lang/String;

.field private renameDialogFragment:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

.field private token:Ljava/lang/String;

.field private final uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->Companion:Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;-><init>()V

    .line 48
    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUiTapAndPay()Lru/rocketbank/core/pay/google/UiTapAndPay;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->androidPayIsAdd:Z

    .line 414
    new-instance v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$navigationOnClickListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$navigationOnClickListener$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->navigationOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getCardPresenter$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter;
    .locals 1

    .line 45
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez p0, :cond_0

    const-string v0, "cardPresenter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getChangePin$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)Lru/rocketbank/core/model/dto/ChangePin;
    .locals 0

    .line 45
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)Ljava/lang/String;
    .locals 1

    .line 45
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "token"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$hideSpinner(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$lockUnlockCard(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->lockUnlockCard(Z)V

    return-void
.end method

.method public static final synthetic access$onNotificationCLick(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->onNotificationCLick()V

    return-void
.end method

.method public static final synthetic access$onTariffClick(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->onTariffClick(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$rename(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->rename()V

    return-void
.end method

.method public static final synthetic access$setCardPresenter$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    return-void
.end method

.method public static final synthetic access$setChangePin$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Lru/rocketbank/core/model/dto/ChangePin;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    return-void
.end method

.method public static final synthetic access$setToken$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showSupport(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->showSupport()V

    return-void
.end method

.method private final lockCard()V
    .locals 3

    .line 386
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->showSpinnerText(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez v0, :cond_0

    const-string v1, "cardPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 390
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 388
    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lockCard(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final lockUnlockCard(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 364
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->lockCard()V

    return-void

    .line 366
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->unlockCard()V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/r2d2/root/card/CardDetailFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->Companion:Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    move-result-object p0

    return-object p0
.end method

.method private final onNotificationCLick()V
    .locals 3

    .line 406
    :try_start_0
    sget-object v0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->Companion:Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "token"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;->createNotificationDialog(Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/NotificationDialog;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->notificationDialog:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    .line 407
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->notificationDialog:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NotificationFragment"

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->notificationDialog:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez v1, :cond_3

    const-string v2, "cardPresenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->setNotificationDialogListener(Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 410
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final onTariffClick(Ljava/lang/String;)V
    .locals 3

    .line 401
    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->Companion:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final refreshAdapter(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;Lru/rocketbank/r2d2/root/card/CardDetailAdapter;)V
    .locals 6

    .line 178
    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->clearAll()V

    const v0, 0x7f110152

    .line 180
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.detail_card)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getCardParameters()Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getAndroidPayParameters()Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getSPayParameters()Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->getShowSpButton()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->getTextRes()I

    move-result v2

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->getClickFun()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$click$1;

    invoke-direct {v4, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$click$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/SPayParameters;)V

    move-object p1, v4

    check-cast p1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    const-string v4, "title"

    .line 188
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2, p1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addSPay(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 191
    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->getShowIt()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->getItemTextRes()I

    move-result p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(androidPayParameters.itemTextRes)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;

    invoke-direct {v2, p0, v1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 192
    invoke-virtual {p2, p1, v2}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addAndroidPay(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    const p1, 0x7f11035f

    .line 199
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.pa_tariff)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->getTariffName()Ljava/lang/String;

    move-result-object v1

    .line 202
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$2;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 199
    invoke-virtual {p2, p1, v3, v1, v2}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addRightArrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const p1, 0x7f110358

    .line 206
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.pa_notification)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->getNotificationName()Ljava/lang/String;

    move-result-object v1

    .line 209
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$3;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$3;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 206
    invoke-virtual {p2, p1, v3, v1, v2}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addRightArrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const p1, 0x7f110353

    .line 213
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.pa_change_pin)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 213
    invoke-virtual {p2, p1, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 220
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez p1, :cond_3

    const-string v1, "cardPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->isRoubleCard()Z

    move-result p1

    .line 221
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->isRoubleCard()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    if-eqz p1, :cond_4

    const p1, 0x7f110480

    .line 223
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.transfer_card2card)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$5;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$5;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 223
    invoke-virtual {p2, p1, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 230
    :cond_4
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->extracts:Z

    if-eqz p1, :cond_5

    const p1, 0x7f1103b0

    .line 231
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.references)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$6;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 231
    invoke-virtual {p2, p1, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_5
    const p1, 0x7f11001f

    .line 237
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.account_detail)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$7;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$7;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 237
    invoke-virtual {p2, p1, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const p1, 0x7f110386

    .line 242
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.precautions)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$8;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$8;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Lru/rocketbank/r2d2/root/card/binding/CardParameters;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 242
    invoke-virtual {p2, p1, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 249
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->getLockStatusName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->getLockStatusColor()I

    move-result v1

    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Lru/rocketbank/r2d2/root/card/binding/CardParameters;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p1, v1, v2}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addLockButton(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    .line 253
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f03000b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object p1, p1, v1

    .line 254
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110281

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resources.getString(R.st\u2026limits_this_month, month)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->getLimits()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 257
    invoke-virtual {p2, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addUpperCaseDelimiter(Ljava/lang/String;)V

    .line 259
    check-cast v0, Ljava/lang/Iterable;

    .line 495
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/Limit;

    .line 260
    invoke-virtual {v1}, Lru/rocketbank/core/model/Limit;->getLimits()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_7
    const-string v2, ""

    :cond_8
    invoke-virtual {v1}, Lru/rocketbank/core/model/Limit;->getLimits()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_a

    :cond_9
    const-string v1, ""

    :cond_a
    invoke-virtual {p2, v2, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->addLimit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    return-void
.end method

.method private final rename()V
    .locals 3

    .line 458
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "token"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->getInstance(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->renameDialogFragment:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    .line 459
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->renameDialogFragment:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final setupToolbar()V
    .locals 6

    .line 420
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    .line 421
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0d0006

    .line 423
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 424
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 426
    new-instance v2, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 427
    invoke-virtual {v2, v3}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 428
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v4, Landroid/content/Context;

    const v5, 0x7f060254

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 430
    new-instance v4, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 431
    invoke-virtual {v4, v3}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 432
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v3, Landroid/content/Context;

    const v5, 0x7f060228

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 434
    iget-object v3, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getToolbarWhiteBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 435
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getToolbarBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 437
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->navigationOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->navigationOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v2, Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 448
    new-instance v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$setupToolbar$2;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v0, Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method private final showSupport()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 464
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showSupport()V

    return-void
.end method

.method private final unlockCard()V
    .locals 3

    const v0, 0x7f1100a0

    .line 371
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->showSpinnerText(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez v0, :cond_0

    const-string v1, "cardPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailFragment$unlockCard$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$unlockCard$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 375
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$unlockCard$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$unlockCard$2;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 373
    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->unlockCard(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final addCardToSp()V
    .locals 0

    .line 319
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->addCardToSpWithGreenWay()V

    return-void
.end method

.method public final addCardToSpWithGreenWay()V
    .locals 4

    .line 279
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    .line 280
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v3, "token"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const v3, 0xb264

    .line 279
    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public final addCartToApWithGreenWay()V
    .locals 6

    .line 271
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    .line 272
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v2, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->getCardBindingData()Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getTitleName()Landroid/databinding/ObservableField;

    move-result-object v2

    invoke-virtual {v2}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v3, "binding.cardBindingData!!.titleName.get()!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 273
    iget-object v3, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v3, :cond_4

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->getCardBindingData()Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getCardNumber()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {v3}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string v4, "binding.cardBindingData!!.cardNumber.get()!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 274
    iget-object v4, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v5, "token"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const v5, 0xb25f

    .line 271
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final createAndroidPayPWallet()V
    .locals 3

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/pay/google/UiTapAndPay;->createWallet$d556c41(Landroid/app/Activity;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    return-void
.end method

.method public final destroyNotificationDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->notificationDialog:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    return-void
.end method

.method public final hideLoader()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->hideSpinner()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 331
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_6

    const p2, 0xb25d

    if-eq p1, p2, :cond_4

    const p2, 0xb25f

    if-eq p1, p2, :cond_2

    const p2, 0xb261

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez p1, :cond_1

    const-string p2, "cardPresenter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->walletCreated()V

    goto :goto_0

    .line 336
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez p1, :cond_3

    const-string p2, "cardPresenter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->cardAddedToAP()V

    .line 337
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    .line 338
    invoke-static {}, Lru/rocketbank/core/manager/AnalyticsManager;->cardAddedViaGooglePay()V

    return-void

    .line 341
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez p1, :cond_5

    const-string p2, "cardPresenter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refresh()V

    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method public final onAmountPressed()V
    .locals 2

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez v0, :cond_0

    const-string v1, "cardPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->changeMode()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 62
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    move-result-object p1

    const-string p2, "FragmentCardDetailBindin\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    .line 63
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->setCardBindingData(Lru/rocketbank/r2d2/root/card/binding/CardBindingData;)V

    .line 64
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez p1, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->setHandler(Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;)V

    .line 66
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onFabClicked(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez v0, :cond_0

    const-string v1, "cardPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onFabClicked(Landroid/view/View;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->hideSpinner()V

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez v0, :cond_0

    const-string v1, "cardPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onPause()V

    .line 115
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 107
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->onResume()V

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez v0, :cond_0

    const-string v1, "cardPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onResume()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    .line 72
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v2, :cond_2

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const-string v3, "binding.fab"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 73
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v3, "CARD_TOKEN"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arguments!!.getString(CARD_TOKEN)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v3, "PLASTIC_TOKEN"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arguments!!.getString(PLASTIC_TOKEN)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->plasticToken:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v3, "CARD_EXTRACTS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->extracts:Z

    const-string v2, "toolbar"

    .line 76
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "realToolbar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v2, :cond_6

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->header:Landroid/widget/FrameLayout;

    const-string v3, "binding.header"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->setupView(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar;Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    .line 79
    new-instance v0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    check-cast v1, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    .line 80
    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v2, :cond_7

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->header:Landroid/widget/FrameLayout;

    const-string v3, "binding.header"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getHeaderHeight()I

    move-result v3

    .line 79
    invoke-direct {v0, v1, v2, v3}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V

    check-cast v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->setParallaxAdapter(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)V

    .line 84
    :cond_8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_9

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v3, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->body:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string v0, "binding.body"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    move-object v4, v0

    check-cast v4, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->createParallax$default(Lru/rocketbank/r2d2/fragments/ParallaxFragment;Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;IILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_a

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->header:Landroid/widget/FrameLayout;

    const-string v1, "binding.header"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->parallaxHeightToView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_b

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->backgroundImage:Landroid/widget/ImageView;

    const-string v1, "binding.backgroundImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->parallaxHeightToView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_c

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->cardContainer:Landroid/widget/RelativeLayout;

    const-string v1, "binding.cardContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->parallaxHeightToView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_d

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const-string v1, "binding.fab"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->addFab(Landroid/support/design/widget/FloatingActionButton;)V

    .line 92
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/ParallaxFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    new-instance p2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v1, "token"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->plasticToken:Ljava/lang/String;

    if-nez v1, :cond_f

    const-string v2, "plasticToken"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    invoke-direct {p2, v0, v1, v2}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;-><init>(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/r2d2/root/card/binding/CardDetailView;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    .line 97
    iget-object p2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardPresenter:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    if-nez p2, :cond_10

    const-string v0, "cardPresenter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    sget-object v0, Lru/rocketbank/core/pay/google/AndroidPayUtils;->INSTANCE:Lru/rocketbank/core/pay/google/AndroidPayUtils;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/pay/google/AndroidPayUtils;->checkPaySupport(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->useAndroidPay(Z)V

    .line 99
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez p1, :cond_11

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 103
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->setupToolbar()V

    return-void
.end method

.method public final onViewInput(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;)V
    .locals 7

    const-string v0, "viewInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v1, "binding.swipeRefresh"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "CardDetail"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    if-nez v0, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->backgroundImage:Landroid/widget/ImageView;

    .line 152
    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v2

    .line 155
    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    .line 156
    new-instance v4, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const/16 v6, 0x5f

    invoke-static {v6, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;-><init>(Landroid/content/Context;I)V

    check-cast v4, Lcom/bumptech/glide/load/Transformation;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 157
    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 161
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getChangePin()Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getCardNumber()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getTitleName()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getTitleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getTitleBalance()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getTitleBalance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getBalance()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;->getBalance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.card.CardDetailAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->refreshAdapter(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;Lru/rocketbank/r2d2/root/card/CardDetailAdapter;)V

    return-void

    :cond_3
    return-void
.end method

.method public final openRefill(Ljava/lang/String;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lru/rocketbank/r2d2/activities/MainActivity;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-static {p1, v1, v2, v2}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->newInstance(Ljava/lang/String;ZFF)Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    move-result-object p1

    .line 130
    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->pushFragment(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public final openTransfers()V
    .locals 4

    .line 359
    sget-object v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->Companion:Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->token:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v3, "token"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final showLoader()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    return-void
.end method

.method public final showSpaySetupDialog()V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x104000a

    .line 287
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpaySetupDialog$$inlined$let$lambda$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpaySetupDialog$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 290
    sget-object v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpaySetupDialog$1$2;->INSTANCE:Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpaySetupDialog$1$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1103f3

    .line 294
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110436

    .line 295
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_0
    return-void
.end method

.method public final showSpayUpdateDialog()V
    .locals 3

    .line 302
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x104000a

    .line 304
    new-instance v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 307
    sget-object v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;->INSTANCE:Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1103f3

    .line 311
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110437

    .line 312
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_0
    return-void
.end method

.method public final startCanDeleteOnly(Ljava/lang/String;)V
    .locals 4

    const-string v0, "tur"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0xb25d

    invoke-virtual {v0, v1, p1, v2, v3}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final startManageAndroidPay(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "tur"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    xor-int/lit8 p2, p2, 0x1

    const v2, 0xb25d

    invoke-virtual {v0, v1, p1, p2, v2}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final updateBalance(Ljava/lang/String;)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->cardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getBalance()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateCardStatus(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->androidPayIsAdd:Z

    .line 355
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->isCardDefault:Z

    return-void
.end method
