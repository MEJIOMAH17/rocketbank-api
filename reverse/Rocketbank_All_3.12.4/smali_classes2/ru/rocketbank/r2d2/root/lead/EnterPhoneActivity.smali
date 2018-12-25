.class public final Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "EnterPhoneActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$OnNextButtonClickListener;,
        Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$Companion;

.field private static final REQUEST_CODE:I = 0x2248


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private buttonNext:Landroid/widget/Button;

.field private countryCode:Landroid/widget/EditText;

.field private phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

.field private rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->Companion:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method

.method public static final synthetic access$getButtonNext$p(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)Landroid/widget/Button;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->buttonNext:Landroid/widget/Button;

    if-nez p0, :cond_0

    const-string v0, "buttonNext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getRocketAPI$p(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)Lru/rocketbank/core/network/api/RocketAPI;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-object p0
.end method

.method public static final synthetic access$next(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->next()V

    return-void
.end method

.method public static final synthetic access$setButtonNext$p(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;Landroid/widget/Button;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->buttonNext:Landroid/widget/Button;

    return-void
.end method

.method public static final synthetic access$setRocketAPI$p(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method

.method public static final synthetic access$validate(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->validate()Z

    move-result p0

    return p0
.end method

.method private final next()V
    .locals 2

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->buttonNext:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "buttonNext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->phoneEnter()V

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v0, :cond_1

    const-string v1, "phone"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->hide(Landroid/widget/EditText;)V

    .line 105
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->requestSMS()V

    return-void
.end method

.method private final requestSMS()V
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->countryCode:Landroid/widget/EditText;

    if-nez v1, :cond_0

    const-string v2, "countryCode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v1, :cond_1

    const-string v2, "phone"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 112
    new-instance v2, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$1;-><init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 113
    sget-object v2, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;->INSTANCE:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 114
    new-instance v2, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;-><init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;Ljava/lang/String;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 115
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 116
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 117
    new-instance v2, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;-><init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;Ljava/lang/String;)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->Companion:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method private final validate()Z
    .locals 5

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->countryCode:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "countryCode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->countryCode:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const-string v1, "countryCode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v0, :cond_3

    const-string v1, "phone"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 91
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f11018b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_5
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f110189

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2248

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 80
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 39
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->setContentView(I)V

    const p1, 0x7f090069

    .line 41
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    sget-object v0, Lru/rocketbank/r2d2/root/lead/LeadConfig;->INSTANCE:Lru/rocketbank/r2d2/root/lead/LeadConfig;

    const-string v1, "background"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/lead/LeadConfig;->showBackground(Landroid/widget/ImageView;)V

    const p1, 0x7f09010f

    .line 44
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->findView(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findView(R.id.country_code)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->countryCode:Landroid/widget/EditText;

    const p1, 0x7f0902b0

    .line 45
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->findView(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findView(R.id.phone)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditTextPhone;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    .line 46
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez p1, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->requestFocus()Z

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez p1, :cond_1

    const-string v0, "phone"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f0900a7

    .line 59
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->findView(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findView(R.id.button_next)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->buttonNext:Landroid/widget/Button;

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->buttonNext:Landroid/widget/Button;

    if-nez p1, :cond_2

    const-string v0, "buttonNext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$OnNextButtonClickListener;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$OnNextButtonClickListener;-><init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez p1, :cond_3

    const-string v0, "phone"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->show(Landroid/widget/EditText;)V

    .line 63
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_4

    .line 64
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .line 72
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->buttonNext:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "buttonNext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
