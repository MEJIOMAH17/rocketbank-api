.class public final Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "ChangeCodewordFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeCodewordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeCodewordFragment.kt\nru/rocketbank/r2d2/fragments/ChangeCodewordFragment\n*L\n1#1,148:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;

.field private static final KEY_CHANGE_CODEWORD:Ljava/lang/String; = "KEY_CHANGE_CODEWORD"

.field private static final KEY_TOKEN_PLASTIC:Ljava/lang/String; = "KEY_TOKEN_PLASTIC"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

.field private changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

.field private codeword:Ljava/lang/String;

.field private plasticToken:Ljava/lang/String;

.field public plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private subscribe:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->Companion:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->codeword:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getKEY_CHANGE_CODEWORD$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->KEY_CHANGE_CODEWORD:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_TOKEN_PLASTIC$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->KEY_TOKEN_PLASTIC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setBinding$p(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getPlasticsApi()Lru/rocketbank/core/network/api/PlasticsApi;
    .locals 2

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez v0, :cond_0

    const-string v1, "plasticsApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSubscribe()Lrx/Subscription;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->subscribe:Lrx/Subscription;

    return-object v0
.end method

.method public final nextPressed(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget v0, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "editTextCodeword"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "editTextCodeword.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 113
    :cond_1
    sget v0, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->hide(Landroid/widget/EditText;)V

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, v1, v2, v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez v0, :cond_2

    const-string v1, "plasticsApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->plasticToken:Ljava/lang/String;

    sget v2, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v3, "editTextCodeword"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/PlasticsApi;->changeCodeword(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 116
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 117
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 119
    new-instance v1, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;Landroid/view/View;)V

    check-cast v1, Lrx/functions/Action1;

    .line 133
    new-instance v2, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;

    invoke-direct {v2, p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;Landroid/view/View;)V

    check-cast v2, Lrx/functions/Action1;

    .line 118
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 54
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 58
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    move-result-object p1

    const-string p2, "FragmentChangeCodewordBi\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget-object p3, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->KEY_CHANGE_CODEWORD:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/ChangeCodeWord;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->KEY_TOKEN_PLASTIC:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->plasticToken:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->codeword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setCodeword(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const p3, 0x7f1100b1

    invoke-virtual {p0, p3}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p3, 0x7f110314

    .line 64
    invoke-virtual {p0, p3}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p2

    .line 63
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/Ref;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 67
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    if-nez p1, :cond_4

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p1, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 70
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    if-nez p2, :cond_6

    const-string p3, "binding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/AbstractActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 71
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_8

    .line 72
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    if-nez p1, :cond_9

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->subscribe:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->unsubscribe(Lrx/Subscription;)V

    .line 92
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 96
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 97
    sget v0, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    .line 98
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 100
    new-instance v1, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;)V

    check-cast v1, Lrx/functions/Action1;

    .line 104
    sget-object v2, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$2;

    check-cast v2, Lrx/functions/Action1;

    .line 99
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->subscribe:Lrx/Subscription;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    sget p1, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->requestFocus()Z

    .line 80
    sget p1, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    new-instance p2, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;)V

    check-cast p2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 87
    sget p1, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->show(Landroid/widget/EditText;)V

    return-void
.end method

.method public final setPlasticsApi(Lru/rocketbank/core/network/api/PlasticsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    return-void
.end method

.method public final setSubscribe(Lrx/Subscription;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->subscribe:Lrx/Subscription;

    return-void
.end method
