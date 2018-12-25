.class public final Lru/rocketbank/r2d2/activities/ReferencesActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ReferencesActivity.kt"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/ReferencesActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReferencesActivity.kt\nru/rocketbank/r2d2/activities/ReferencesActivity\n*L\n1#1,147:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/ReferencesActivity$Companion;

.field private static final KEY_TOKEN:Ljava/lang/String; = "KEY_TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

.field private count:I

.field private lastRef:Lru/rocketbank/core/model/references/Reference;

.field private pdfDialog:Landroid/support/v7/app/AlertDialog;

.field private final plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private referencesSubscription:Lrx/Subscription;

.field private swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/ReferencesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/ReferencesActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->Companion:Lru/rocketbank/r2d2/activities/ReferencesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    return-void
.end method

.method public static final synthetic access$addView(Lru/rocketbank/r2d2/activities/ReferencesActivity;Lru/rocketbank/core/model/references/Reference;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->addView(Lru/rocketbank/core/model/references/Reference;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;)Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;
    .locals 1

    .line 23
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCount$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;)I
    .locals 0

    .line 23
    iget p0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->count:I

    return p0
.end method

.method public static final synthetic access$getKEY_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->KEY_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLastRef(Lru/rocketbank/r2d2/activities/ReferencesActivity;)Lru/rocketbank/core/model/references/Reference;
    .locals 0

    .line 23
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->getLastRef()Lru/rocketbank/core/model/references/Reference;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->token:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setBinding$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    return-void
.end method

.method public static final synthetic access$setCount$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;I)V
    .locals 0

    .line 23
    iput p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->count:I

    return-void
.end method

.method public static final synthetic access$setToken$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->token:Ljava/lang/String;

    return-void
.end method

.method private final addView(Lru/rocketbank/core/model/references/Reference;)V
    .locals 5

    .line 119
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    if-nez v1, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;->container:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0c0194

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    move-result-object v1

    const-string v2, "itemBinding"

    .line 121
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->setReference(Lru/rocketbank/core/model/references/Reference;)V

    .line 122
    new-instance v2, Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;

    invoke-direct {v2}, Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;-><init>()V

    .line 123
    invoke-virtual {v2}, Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {p1}, Lru/rocketbank/core/model/references/Reference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v2}, Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;->getLng()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {p1}, Lru/rocketbank/core/model/references/Reference;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->setData(Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;)V

    .line 126
    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->setListener(Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;)V

    .line 127
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    if-nez p1, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final getLastRef()Lru/rocketbank/core/model/references/Reference;
    .locals 2

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->lastRef:Lru/rocketbank/core/model/references/Reference;

    if-nez v0, :cond_0

    const-string v1, "lastRef"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private final isEmpty()Z
    .locals 1

    .line 130
    iget v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    return-object v0
.end method

.method public final load()V
    .locals 3

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->token:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->showProgressDialog()V

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string v1, "swipeRefresh"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->token:Ljava/lang/String;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/PlasticsApi;->getReferencesList(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 50
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 51
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 52
    new-instance v1, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/activities/ReferencesActivity;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->referencesSubscription:Lrx/Subscription;

    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token must be not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0050

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026ayout.activity_reference)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->KEY_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->token:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v0, "binding.swipeRefresh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-void
.end method

.method public final onReferenceClicked(Landroid/view/View;Lru/rocketbank/core/model/references/Reference;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ref"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 94
    iput-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->lastRef:Lru/rocketbank/core/model/references/Reference;

    .line 95
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->pdfDialog:Landroid/support/v7/app/AlertDialog;

    if-nez p2, :cond_3

    .line 96
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11016c

    .line 97
    invoke-virtual {p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 98
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 v0, 0x1040000

    .line 99
    sget-object v1, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$1;->INSTANCE:Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$1;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x104000a

    .line 102
    new-instance v1, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;-><init>(Lru/rocketbank/r2d2/activities/ReferencesActivity;Landroid/content/Context;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 105
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->pdfDialog:Landroid/support/v7/app/AlertDialog;

    .line 106
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->pdfDialog:Landroid/support/v7/app/AlertDialog;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 107
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->pdfDialog:Landroid/support/v7/app/AlertDialog;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const v0, 0x7f060208

    .line 108
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 109
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->pdfDialog:Landroid/support/v7/app/AlertDialog;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v0, -0x2

    invoke-virtual {p2, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const v0, 0x7f060095

    .line 110
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    .line 113
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->pdfDialog:Landroid/support/v7/app/AlertDialog;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public final onRefresh()V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->load()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 85
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string v1, "swipeRefresh"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 87
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->load()V

    :cond_1
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 78
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStop()V

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->referencesSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 80
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_1

    const-string v1, "swipeRefresh"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->hideProgressDialog()V

    return-void
.end method
