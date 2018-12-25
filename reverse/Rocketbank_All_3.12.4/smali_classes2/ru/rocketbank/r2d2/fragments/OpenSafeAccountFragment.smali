.class public final Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "OpenSafeAccountFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenSafeAccountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenSafeAccountFragment.kt\nru/rocketbank/r2d2/fragments/OpenSafeAccountFragment\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,194:1\n60#2:195\n31#2,23:196\n*E\n*S KotlinDebug\n*F\n+ 1 OpenSafeAccountFragment.kt\nru/rocketbank/r2d2/fragments/OpenSafeAccountFragment\n*L\n107#1:195\n107#1,23:196\n*E\n"
.end annotation


# static fields
.field private static final CURRENCY_NAME:Ljava/lang/String; = "CURRENCY_NAME"

.field public static final Companion:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;

.field private static final DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field private static final URL:Ljava/lang/String; = "URL"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private createAcсountSubscription:Lrx/Subscription;

.field private currencyName:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

.field private progressDialog:Landroid/app/ProgressDialog;

.field public rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->Companion:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCURRENCY_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->CURRENCY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDESCRIPTION$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getProgressDialog$p(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$getURL$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$hideProgress(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->hideProgress()V

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$showAlert(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->showAlert(I)V

    return-void
.end method

.method private final hideProgress()V
    .locals 1

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private final openDetails()V
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private final openSafeAccount()V
    .locals 8

    .line 104
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->showProgressExecution()V

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    if-nez v0, :cond_0

    const-string v1, "fragmentOpenSafeAccountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->name:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    check-cast v0, Ljava/lang/CharSequence;

    .line 197
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    move v5, v1

    :goto_0
    if-gt v1, v4, :cond_5

    if-nez v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    .line 202
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    add-int/2addr v4, v2

    .line 218
    invoke-interface {v0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 110
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v1, :cond_6

    const-string v2, "rocketAPI"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->currencyName:Ljava/lang/String;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v3, :cond_7

    const-string v4, "authorization"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lru/rocketbank/core/network/api/RocketAPI;->accountsSafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$openSafeAccount$2;-><init>(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->createAcсountSubscription:Lrx/Subscription;

    return-void

    :cond_8
    const v0, 0x7f110180

    .line 133
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->showAlert(I)V

    .line 134
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->hideProgress()V

    return-void
.end method

.method private final showAlert(I)V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 142
    sget-object v1, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$showAlert$1$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$showAlert$1$1;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    :cond_0
    return-void
.end method

.method private final showProgressExecution()V
    .locals 3

    .line 163
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 168
    new-instance v1, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$showProgressExecution$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$showProgressExecution$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 169
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketAPI()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 2

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_0

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013a

    if-eq p1, v0, :cond_1

    const v0, 0x7f09028f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->openSafeAccount()V

    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->openDetails()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 47
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    move-result-object p1

    const-string p2, "FragmentOpenSafeAccountB\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    if-nez p1, :cond_0

    const-string p2, "fragmentOpenSafeAccountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lru/rocketbank/r2d2/data/binding/OpenSafeAccount;

    invoke-direct {p2}, Lru/rocketbank/r2d2/data/binding/OpenSafeAccount;-><init>()V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->setData(Lru/rocketbank/r2d2/data/binding/OpenSafeAccount;)V

    .line 49
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    if-nez p1, :cond_1

    const-string p2, "fragmentOpenSafeAccountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 95
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 96
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->hideProgress()V

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->createAcсountSubscription:Lrx/Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->createAcсountSubscription:Lrx/Subscription;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->createAcсountSubscription:Lrx/Subscription;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 101
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 60
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "No parameters for this fragment"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 63
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object p2, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->CURRENCY_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->currencyName:Ljava/lang/String;

    .line 64
    sget-object p2, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->description:Ljava/lang/String;

    .line 65
    sget-object p2, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->URL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->url:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->currencyName:Ljava/lang/String;

    invoke-static {p1}, Lru/rocketbank/core/model/enums/Currency;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    .line 68
    sget-object p2, Lru/rocketbank/core/model/enums/Currency;->DOLLAR:Lru/rocketbank/core/model/enums/Currency;

    if-ne p2, p1, :cond_2

    const p1, 0x7f1103ed

    goto :goto_0

    .line 70
    :cond_2
    sget-object p2, Lru/rocketbank/core/model/enums/Currency;->EURO:Lru/rocketbank/core/model/enums/Currency;

    if-ne p2, p1, :cond_3

    const p1, 0x7f1103e9

    goto :goto_0

    .line 72
    :cond_3
    sget-object p2, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-ne p2, p1, :cond_4

    const p1, 0x7f1103eb

    goto :goto_0

    :cond_4
    const p1, 0x7f1103e8

    .line 78
    :goto_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    if-nez p2, :cond_5

    const-string v0, "fragmentOpenSafeAccountBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->name:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "fragmentOpenSafeAccountBinding.name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    if-nez p1, :cond_6

    const-string p2, "fragmentOpenSafeAccountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->open:Lru/rocketbank/core/widgets/RocketTextView;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    if-nez p1, :cond_7

    const-string v0, "fragmentOpenSafeAccountBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->description:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->fragmentOpenSafeAccountBinding:Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    if-nez p1, :cond_8

    const-string v0, "fragmentOpenSafeAccountBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;->details:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setRocketAPI(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method
