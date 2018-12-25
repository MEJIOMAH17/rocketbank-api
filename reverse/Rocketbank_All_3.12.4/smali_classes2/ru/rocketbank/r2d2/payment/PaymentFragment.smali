.class public final Lru/rocketbank/r2d2/payment/PaymentFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "PaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;,
        Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;,
        Lru/rocketbank/r2d2/payment/PaymentFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/payment/PaymentFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "PaymentFragment"

.field private static final TRANSITION_NAME_AVATAR:Ljava/lang/String; = "avatar"

.field private static final TRANSITION_NAME_NAME:Ljava/lang/String; = "name"

.field private static final TRANSITION_NAME_ROOT:Ljava/lang/String; = "root"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field public fab:Landroid/support/design/widget/FloatingActionButton;

.field private layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field public progressBar:Landroid/widget/ProgressBar;

.field public providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

.field private final providersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private templateAdapter:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

.field public templateApi:Lru/rocketbank/core/network/api/TemplateApi;

.field private templateSubscription:Lrx/Subscription;

.field public templatesView:Landroid/support/v7/widget/RecyclerView;

.field public toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentFragment;->Companion:Lru/rocketbank/r2d2/payment/PaymentFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$deleteTemplate(Lru/rocketbank/r2d2/payment/PaymentFragment;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->deleteTemplate(Lru/rocketbank/core/model/transfers/Template;)V

    return-void
.end method

.method public static final synthetic access$getCropCircleTransformation$p(Lru/rocketbank/r2d2/payment/PaymentFragment;)Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 0

    .line 43
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-object p0
.end method

.method public static final synthetic access$getProvider(Lru/rocketbank/r2d2/payment/PaymentFragment;I)Lru/rocketbank/core/model/provider/Provider;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getProvider(I)Lru/rocketbank/core/model/provider/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTRANSITION_NAME_AVATAR$cp()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentFragment;->TRANSITION_NAME_AVATAR:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTRANSITION_NAME_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentFragment;->TRANSITION_NAME_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTRANSITION_NAME_ROOT$cp()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentFragment;->TRANSITION_NAME_ROOT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTemplateAdapter$p(Lru/rocketbank/r2d2/payment/PaymentFragment;)Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateAdapter:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    return-object p0
.end method

.method public static final synthetic access$hideSpinner(Lru/rocketbank/r2d2/payment/PaymentFragment;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$loadTemplates(Lru/rocketbank/r2d2/payment/PaymentFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->loadTemplates()V

    return-void
.end method

.method public static final synthetic access$setCropCircleTransformation$p(Lru/rocketbank/r2d2/payment/PaymentFragment;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-void
.end method

.method public static final synthetic access$setTemplateAdapter$p(Lru/rocketbank/r2d2/payment/PaymentFragment;Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateAdapter:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    return-void
.end method

.method public static final synthetic access$showPopup(Lru/rocketbank/r2d2/payment/PaymentFragment;Landroid/view/View;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/payment/PaymentFragment;->showPopup(Landroid/view/View;Lru/rocketbank/core/model/transfers/Template;)V

    return-void
.end method

.method private final deleteTemplate(Lru/rocketbank/core/model/transfers/Template;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateApi:Lru/rocketbank/core/network/api/TemplateApi;

    if-nez v0, :cond_0

    const-string v1, "templateApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, p1, Lru/rocketbank/core/model/transfers/Template;->id:I

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/TemplateApi;->delete(I)Lrx/Observable;

    move-result-object v0

    .line 327
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 328
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment;Lru/rocketbank/core/model/transfers/Template;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateSubscription:Lrx/Subscription;

    return-void
.end method

.method private final getProvider(I)Lru/rocketbank/core/model/provider/Provider;
    .locals 1

    .line 291
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 294
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/provider/Provider;

    return-object p1
.end method

.method private final loadTemplates()V
    .locals 2

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateSubscription:Lrx/Subscription;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateSubscription:Lrx/Subscription;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_2

    const-string v1, "swipeRefreshView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 146
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateApi:Lru/rocketbank/core/network/api/TemplateApi;

    if-nez v0, :cond_4

    const-string v1, "templateApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Lru/rocketbank/core/network/api/TemplateApi;->getTemplatesPayments()Lrx/Observable;

    move-result-object v0

    .line 147
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 148
    sget-object v1, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;->INSTANCE:Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 154
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$2;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateSubscription:Lrx/Subscription;

    return-void
.end method

.method private final showPopup(Landroid/view/View;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 4

    .line 298
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 300
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    .line 301
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    const-string v3, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c"

    .line 302
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 303
    new-instance p1, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;

    invoke-direct {p1, p0, p2}, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment;Lru/rocketbank/core/model/transfers/Template;)V

    check-cast p1, Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 320
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getFab()Landroid/support/design/widget/FloatingActionButton;
    .locals 2

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_0

    const-string v1, "fab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;
    .locals 2

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    if-nez v0, :cond_0

    const-string v1, "providersApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSwipeRefreshView()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 2

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string v1, "swipeRefreshView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTemplateApi()Lru/rocketbank/core/network/api/TemplateApi;
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateApi:Lru/rocketbank/core/network/api/TemplateApi;

    if-nez v0, :cond_0

    const-string v1, "templateApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTemplatesView()Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templatesView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "templatesView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0c00ed

    .line 78
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09036b

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.widget.SwipeRefreshLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v0, 0x7f09037f

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templatesView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0903d8

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v2, Landroid/support/v7/widget/Toolbar;

    iput-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f090170

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.design.widget.FloatingActionButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v3, Landroid/support/design/widget/FloatingActionButton;

    iput-object v3, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    const v3, 0x7f0902ba

    .line 84
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.widget.SwipeRefreshLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templatesView:Landroid/support/v7/widget/RecyclerView;

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 89
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.design.widget.FloatingActionButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 90
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 92
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    if-nez p2, :cond_a

    const-string v0, "fab"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentFragment$onCreateView$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez p2, :cond_b

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templatesView:Landroid/support/v7/widget/RecyclerView;

    if-nez p2, :cond_c

    const-string p3, "templatesView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 97
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object p2

    .line 98
    invoke-virtual {p2}, Lru/rocketbank/core/manager/DataManager;->loadProviders()V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/network/model/ProvidersResponse;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/ProvidersResponse;->getProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/ProvidersResponse;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/provider/Provider;

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersMap:Ljava/util/HashMap;

    const-string v2, "p"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->loadTemplates()V

    return-void

    .line 66
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f110181

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->unsubscribe(Lrx/Subscription;)V

    .line 183
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 132
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f1101cf

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 134
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->loadTemplates()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTemplateApi()Lru/rocketbank/core/network/api/TemplateApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateApi:Lru/rocketbank/core/network/api/TemplateApi;

    .line 118
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    const p2, 0x7f0903d8

    .line 120
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/payment/PaymentFragment;->setupDefaultToolbar(Landroid/view/View;I)I

    .line 122
    new-instance p1, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateAdapter:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    .line 124
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templatesView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_0

    const-string p2, "templatesView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 126
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templatesView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_1

    const-string p2, "templatesView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateAdapter:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 128
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez p1, :cond_2

    const-string p2, "swipeRefreshView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance p2, Lru/rocketbank/r2d2/payment/PaymentFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public final setFab(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    return-void
.end method

.method public final setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final setProvidersApi(Lru/rocketbank/core/network/api/ProvidersApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    return-void
.end method

.method public final setSwipeRefreshView(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-void
.end method

.method public final setTemplateApi(Lru/rocketbank/core/network/api/TemplateApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templateApi:Lru/rocketbank/core/network/api/TemplateApi;

    return-void
.end method

.method public final setTemplatesView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->templatesView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public final setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public final showPayments()V
    .locals 5

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_0

    const-string v1, "fab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_1

    const-string v2, "fab"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 107
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_2

    const-string v2, "fab"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_3

    const-string v3, "fab"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 109
    sget-object v2, Lru/rocketbank/r2d2/activities/ProvidersActivity;->Companion:Lru/rocketbank/r2d2/activities/ProvidersActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v4, "activity!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Lru/rocketbank/r2d2/activities/ProvidersActivity$Companion;->startActivity(Landroid/content/Context;ZII)V

    return-void
.end method
