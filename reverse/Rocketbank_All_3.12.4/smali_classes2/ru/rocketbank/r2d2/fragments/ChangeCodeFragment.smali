.class public final Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "ChangeCodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeCodeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeCodeFragment.kt\nru/rocketbank/r2d2/fragments/ChangeCodeFragment\n*L\n1#1,313:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

.field private change:Z

.field private code:Ljava/lang/String;

.field private codeSubscription:Lrx/Subscription;

.field public dataManager:Lru/rocketbank/core/manager/DataManager;

.field private isActivation:Z

.field private isCode:Z

.field private isFirst:Z

.field private pinSubscription:Lrx/Subscription;

.field private pinText:Ljava/lang/String;

.field private pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

.field private plasticToken:Ljava/lang/String;

.field private plastic_check_id:Ljava/lang/String;

.field public plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private textWatcher:Landroid/text/TextWatcher;

.field private weakWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isFirst:Z

    return-void
.end method

.method public static final synthetic access$getChange$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->change:Z

    return p0
.end method

.method public static final synthetic access$getChangeActivity$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/r2d2/activities/ChangeCodeActivity;
    .locals 0

    .line 40
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getChangeActivity()Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->code:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCodeObservable(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getCodeObservable(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCodeSubscription$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lrx/Subscription;
    .locals 0

    .line 40
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->codeSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getPinSubscription$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lrx/Subscription;
    .locals 0

    .line 40
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getPinView$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/core/widgets/RocketPinEntryView;
    .locals 1

    .line 40
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

    if-nez p0, :cond_0

    const-string v0, "pinView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getPlasticToken$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticToken:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPlastic_check_id$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plastic_check_id:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$init(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->init(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$isActivation$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isActivation:Z

    return p0
.end method

.method public static final synthetic access$isCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isCode:Z

    return p0
.end method

.method public static final synthetic access$isFirst$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isFirst:Z

    return p0
.end method

.method public static final synthetic access$reset(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->reset(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setActivation$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isActivation:Z

    return-void
.end method

.method public static final synthetic access$setChange$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->change:Z

    return-void
.end method

.method public static final synthetic access$setCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCode$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isCode:Z

    return-void
.end method

.method public static final synthetic access$setCodeSubscription$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Lrx/Subscription;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->codeSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setFirst$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isFirst:Z

    return-void
.end method

.method public static final synthetic access$setPinSubscription$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Lrx/Subscription;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setPinView$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Lru/rocketbank/core/widgets/RocketPinEntryView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

    return-void
.end method

.method public static final synthetic access$setPlasticToken$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticToken:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPlastic_check_id$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plastic_check_id:Ljava/lang/String;

    return-void
.end method

.method private final getChangeActivity()Lru/rocketbank/r2d2/activities/ChangeCodeActivity;
    .locals 2

    .line 299
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.ChangeCodeActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    return-object v0
.end method

.method private final getCodeObservable(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/ActivationResponse;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez v0, :cond_0

    const-string v1, "plasticsApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p2, p1}, Lru/rocketbank/core/network/api/PlasticsApi;->changeShortCode(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string p2, "plasticsApi.changeShortC\u2026dSchedulers.mainThread())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final init(Landroid/view/View;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->editText:Lru/rocketbank/core/widgets/RocketPinEntryView;

    const-string v1, "binding.editText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 98
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    if-nez v1, :cond_2

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    .line 99
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    if-nez v2, :cond_3

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    .line 100
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

    if-nez v3, :cond_4

    const-string v4, "pinView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketPinEntryView;->clearText()V

    .line 102
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v3, :cond_6

    .line 103
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

    if-nez v3, :cond_5

    const-string v4, "pinView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/RocketPinEntryView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    :cond_6
    new-instance v3, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    invoke-direct {v3, p0, p1, v2}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;Lru/rocketbank/core/widgets/RocketTextView;)V

    check-cast v3, Landroid/text/TextWatcher;

    iput-object v3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->textWatcher:Landroid/text/TextWatcher;

    .line 254
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->weakWatcher:Ljava/lang/ref/WeakReference;

    .line 255
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->weakWatcher:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextWatcher;

    .line 256
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

    if-nez v2, :cond_8

    const-string v3, "pinView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2, p1}, Lru/rocketbank/core/widgets/RocketPinEntryView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 259
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 261
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    const-string v2, "input_method"

    .line 262
    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 263
    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 264
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinView:Lru/rocketbank/core/widgets/RocketPinEntryView;

    if-nez v2, :cond_a

    const-string v3, "pinView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    new-instance v3, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$$inlined$run$lambda$1;

    invoke-direct {v3, p0, v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$$inlined$run$lambda$1;-><init>(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Lru/rocketbank/core/widgets/RocketTextView;Lru/rocketbank/core/widgets/RocketTextView;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketPinEntryView;->post(Ljava/lang/Runnable;)Z

    .line 268
    iget-boolean v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isCode:Z

    if-eqz v2, :cond_c

    const v1, 0x7f110312

    .line 269
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    const-string v1, "textView"

    .line 270
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isFirst:Z

    if-eqz v1, :cond_b

    const v1, 0x7f110185

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_b
    const v1, 0x7f1103cc

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 272
    :cond_c
    iget-boolean v2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isActivation:Z

    if-eqz v2, :cond_d

    const v2, 0x7f110029

    .line 273
    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    goto :goto_2

    :cond_d
    const v2, 0x7f110473

    .line 275
    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 277
    :goto_2
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isFirst:Z

    if-eqz p1, :cond_e

    const p1, 0x7f110186

    goto :goto_3

    :cond_e
    const p1, 0x7f1103ce

    :goto_3
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 278
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinText:Ljava/lang/String;

    if-eqz p1, :cond_f

    const-string p1, "textViewDescription"

    .line 279
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinText:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    return-void

    :cond_10
    return-void
.end method

.method private final reset(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->code:Ljava/lang/String;

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isFirst:Z

    .line 289
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->init(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDataManager()Lru/rocketbank/core/manager/DataManager;
    .locals 2

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->dataManager:Lru/rocketbank/core/manager/DataManager;

    if-nez v0, :cond_0

    const-string v1, "dataManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getPinObservable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/ActivationResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "plastic_check_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plasticToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 307
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez p1, :cond_0

    const-string v0, "plasticsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p4, p2, p3}, Lru/rocketbank/core/network/api/PlasticsApi;->activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string p2, "plasticsApi.activate(pla\u2026dSchedulers.mainThread())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 310
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez p1, :cond_2

    const-string v0, "plasticsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, p4, p2, p3}, Lru/rocketbank/core/network/api/PlasticsApi;->changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string p2, "plasticsApi.changePin(pl\u2026dSchedulers.mainThread())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getPlasticsApi()Lru/rocketbank/core/network/api/PlasticsApi;
    .locals 2

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez v0, :cond_0

    const-string v1, "plasticsApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "KEY_PIN_TEXT"

    .line 62
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinText:Ljava/lang/String;

    const-string v0, "key_is_activation"

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isActivation:Z

    const-string v0, "key_is_code"

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->isCode:Z

    const-string v0, "key_token_plastic"

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticToken:Ljava/lang/String;

    const-string v0, "KEY_CHANGE"

    .line 66
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->change:Z

    const-string v0, "KEY_PLASTIC_CHECK_ID"

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plastic_check_id:Ljava/lang/String;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 73
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->dataManager:Lru/rocketbank/core/manager/DataManager;

    const/4 p3, 0x0

    .line 75
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    move-result-object p1

    const-string p2, "FragmentChangeBinding.in\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    .line 76
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    if-nez p1, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const v0, 0x7f110312

    .line 77
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0x8

    .line 76
    invoke-direct {p2, v0, v1, p3, v2}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 84
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    if-nez p2, :cond_3

    const-string p3, "binding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/AbstractActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 85
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    if-nez p1, :cond_6

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 293
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->pinSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->unsubscribe(Lrx/Subscription;)V

    .line 294
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->codeSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->unsubscribe(Lrx/Subscription;)V

    .line 295
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->init(Landroid/view/View;)V

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setDataManager(Lru/rocketbank/core/manager/DataManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->dataManager:Lru/rocketbank/core/manager/DataManager;

    return-void
.end method

.method public final setPlasticsApi(Lru/rocketbank/core/network/api/PlasticsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    return-void
.end method
