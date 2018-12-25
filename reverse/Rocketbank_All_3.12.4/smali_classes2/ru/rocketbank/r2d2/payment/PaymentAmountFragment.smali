.class public final Lru/rocketbank/r2d2/payment/PaymentAmountFragment;
.super Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;
.source "PaymentAmountFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/payment/SharedTransitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/PaymentAmountFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentAmountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentAmountFragment.kt\nru/rocketbank/r2d2/payment/PaymentAmountFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,334:1\n1728#2:335\n60#3:336\n31#3,23:337\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentAmountFragment.kt\nru/rocketbank/r2d2/payment/PaymentAmountFragment\n*L\n119#1:335\n285#1:336\n285#1,23:337\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/payment/PaymentAmountFragment$Companion;

.field private static final KEY_TOKEN:Ljava/lang/String; = "KEY_TOKEN"

.field private static final REQUEST_CODE:I = 0x3e7

.field private static final STATE_COMMISSION_LOADED:I = 0x0

.field private static final STATE_COMMISSION_LOADING:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountFrom:Lru/rocketbank/core/model/facade/Account;

.field private buttonNext:Landroid/widget/Button;

.field private final changeAmountSubscriber:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private comission1TextView:Landroid/widget/TextView;

.field private comissionTextView:Landroid/widget/TextView;

.field private commissionSubscription:Lrx/Subscription;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field public currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

.field private hasCommission:Z

.field private imageViewIcon:Landroid/widget/ImageView;

.field private provider:Lru/rocketbank/core/model/provider/Provider;

.field public providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

.field private selectAccountSubscription:Lrx/Subscription;

.field private sourceViewPager:Lru/rocketbank/r2d2/widget/AccountWidget;

.field private template:Lru/rocketbank/core/model/transfers/Template;

.field private textSubscriptionAmount:Lrx/Subscription;

.field private textViewName:Lru/rocketbank/core/widgets/RocketTextView;

.field public toolbar:Landroid/support/v7/widget/Toolbar;

.field private viewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->Companion:Lru/rocketbank/r2d2/payment/PaymentAmountFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;-><init>()V

    .line 238
    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)V

    check-cast v0, Lrx/functions/Action1;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->changeAmountSubscriber:Lrx/functions/Action1;

    return-void
.end method

.method public static final synthetic access$getButtonNext$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/Button;
    .locals 0

    .line 44
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    return-object p0
.end method

.method public static final synthetic access$getComission1TextView$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comission1TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getCommissionSubscription$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Lrx/Subscription;
    .locals 0

    .line 44
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->commissionSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getHasCommission$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->hasCommission:Z

    return p0
.end method

.method public static final synthetic access$getProvider$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Lru/rocketbank/core/model/provider/Provider;
    .locals 0

    .line 44
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    return-object p0
.end method

.method public static final synthetic access$getTemplate$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Lru/rocketbank/core/model/transfers/Template;
    .locals 0

    .line 44
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    return-object p0
.end method

.method public static final synthetic access$getViewSwitcher$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 44
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->viewSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method public static final synthetic access$onSelectAccount(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->onSelectAccount(Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method

.method public static final synthetic access$setButtonNext$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/widget/Button;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    return-void
.end method

.method public static final synthetic access$setComission1TextView$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comission1TextView:Landroid/widget/TextView;

    return-void
.end method

.method public static final synthetic access$setCommissionSubscription$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lrx/Subscription;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->commissionSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setHasCommission$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->hasCommission:Z

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lru/rocketbank/core/model/provider/Provider;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    return-void
.end method

.method public static final synthetic access$setTemplate$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    return-void
.end method

.method public static final synthetic access$setViewSwitcher$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/widget/ViewSwitcher;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->viewSwitcher:Landroid/widget/ViewSwitcher;

    return-void
.end method

.method public static final synthetic access$showPopup(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->showPopup(Landroid/view/View;)V

    return-void
.end method

.method private final checkAmount()V
    .locals 7

    .line 148
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-wide v0, v0, Lru/rocketbank/core/model/transfers/Template;->amount:D

    .line 149
    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    cmpl-double v2, v0, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_11

    cmpg-double v2, v0, v5

    if-gtz v2, :cond_11

    .line 152
    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/Provider;->getMin()I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/Provider;->getMin()I

    move-result v2

    int-to-double v5, v2

    cmpg-double v2, v0, v5

    if-gez v2, :cond_7

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comissionTextView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v1, 0x7f1101c5

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.fragm\u2026t_payment_amount_minimun)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v5, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v5}, Lru/rocketbank/core/model/provider/Provider;->getMin()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 155
    :cond_7
    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/Provider;->getMax()I

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/Provider;->getMax()I

    move-result v2

    int-to-double v5, v2

    cmpl-double v2, v0, v5

    if-lez v2, :cond_d

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comissionTextView:Landroid/widget/TextView;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v1, 0x7f1101c4

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.fragm\u2026t_payment_amount_maximum)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v5, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {v5}, Lru/rocketbank/core/model/provider/Provider;->getMax()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 159
    :cond_d
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comissionTextView:Landroid/widget/TextView;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->sourceViewPager:Lru/rocketbank/r2d2/widget/AccountWidget;

    if-nez v0, :cond_10

    const-string v1, "sourceViewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    const v1, 0x7f060228

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widget/AccountWidget;->highlightAmount(I)V

    return-void

    :cond_11
    cmpl-double v2, v0, v5

    if-lez v2, :cond_15

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez v0, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comissionTextView:Landroid/widget/TextView;

    if-nez v0, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    const v1, 0x7f110323

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->sourceViewPager:Lru/rocketbank/r2d2/widget/AccountWidget;

    if-nez v0, :cond_14

    const-string v1, "sourceViewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widget/AccountWidget;->highlightAmount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    return-void

    :catch_0
    return-void
.end method

.method private final clearTransitionNames()V
    .locals 3

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lru/rocketbank/r2d2/R$id;->imageViewIcon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v2, Lru/rocketbank/r2d2/R$id;->textViewName:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTransitionName(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method private final onSelectAccount(Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    .line 142
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->checkAmount()V

    return-void
.end method

.method private final onSuccess()V
    .locals 3

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showPopup(Landroid/view/View;)V
    .locals 3

    .line 210
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 212
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x0

    const v2, 0x7f11017b

    .line 213
    invoke-interface {p1, v1, v1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 214
    new-instance p1, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$showPopup$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$showPopup$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)V

    check-cast p1, Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 221
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 2

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    if-nez v0, :cond_0

    const-string v1, "currencyManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;
    .locals 2

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    if-nez v0, :cond_0

    const-string v1, "providersApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 254
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p2, :cond_0

    const/16 p3, 0x3e7

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 257
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->onSuccess()V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c00ef

    .line 72
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903d8

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 75
    new-instance p2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 80
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p2, :cond_1

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    const p2, 0x7f0900f2

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comissionTextView:Landroid/widget/TextView;

    const p2, 0x7f0900f1

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comission1TextView:Landroid/widget/TextView;

    const p2, 0x7f0902a9

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f09040c

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ViewSwitcher"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p2, Landroid/widget/ViewSwitcher;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getPaymentProvider()Lru/rocketbank/core/model/provider/Provider;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string v1, "template"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/transfers/Template;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    const-string p2, "rootView"

    .line 88
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lru/rocketbank/r2d2/R$id;->sourceViewPager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/widget/AccountWidget;

    const-string v1, "rootView.sourceViewPager"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->sourceViewPager:Lru/rocketbank/r2d2/widget/AccountWidget;

    const p2, 0x7f0901d3

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f0903a9

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    const v2, 0x7f09039a

    .line 91
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    .line 93
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v3}, Lru/rocketbank/core/model/provider/Provider;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v4, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-static {p2, v3, v4}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 94
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-eqz p2, :cond_c

    iget-object p2, p2, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    if-eqz p2, :cond_c

    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_c
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez p2, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    invoke-virtual {v1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez p2, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-eqz p2, :cond_11

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    iget-object p2, p2, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    goto :goto_2

    :cond_f
    move-object p2, v1

    :goto_2
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v3, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    invoke-virtual {v3}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {p2, v3, v0, v4, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    move p2, v0

    goto :goto_3

    :cond_11
    const/16 p2, 0x8

    :goto_3
    invoke-virtual {v2, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 98
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz p2, :cond_12

    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$1;

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/widget/EditText;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p2, v1}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_12
    if-nez p3, :cond_19

    .line 105
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-eqz p2, :cond_17

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-eqz p2, :cond_13

    iget-wide p2, p2, Lru/rocketbank/core/model/transfers/Template;->amount:D

    const-wide/16 v1, 0x0

    cmpg-double v3, p2, v1

    if-nez v3, :cond_13

    goto :goto_4

    .line 110
    :cond_13
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-eqz p2, :cond_14

    iget-wide p2, p2, Lru/rocketbank/core/model/transfers/Template;->amount:D

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_15

    :cond_14
    const-string p2, "0"

    :cond_15
    if-nez p2, :cond_16

    .line 111
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 112
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz v1, :cond_19

    .line 113
    invoke-virtual {v1, p3}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(I)V

    goto :goto_5

    .line 106
    :cond_17
    :goto_4
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz p2, :cond_18

    const-string p3, "0"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_18
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz p2, :cond_19

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(I)V

    .line 118
    :cond_19
    :goto_5
    new-instance p2, Lru/rocketbank/core/network/model/PaymentRequest;

    invoke-direct {p2}, Lru/rocketbank/core/network/model/PaymentRequest;-><init>()V

    .line 119
    iget-object p3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez p3, :cond_1a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1a
    iget-object p3, p3, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    const-string v1, "template!!.provider"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->getFields()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lru/rocketbank/core/network/model/PaymentRequest;->put(Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;)V

    goto :goto_6

    :cond_1b
    const p3, 0x7f09008a

    .line 121
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_1c

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    .line 122
    iget-object p3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez p3, :cond_1d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1d
    const v1, 0x7f110314

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object p3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez p3, :cond_1e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    sget p3, Lru/rocketbank/r2d2/R$id;->actions:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v1, "rootView.actions"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    sget p3, Lru/rocketbank/r2d2/R$id;->actions:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$4;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$4;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/view/View;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez p3, :cond_1f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$5;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$5;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lru/rocketbank/core/network/model/PaymentRequest;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->clearTransitionNames()V

    .line 131
    sget p2, Lru/rocketbank/r2d2/R$id;->imageViewIcon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->imageViewIcon:Landroid/widget/ImageView;

    .line 132
    sget p2, Lru/rocketbank/r2d2/R$id;->textViewName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->textViewName:Lru/rocketbank/core/widgets/RocketTextView;

    .line 133
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getLocalEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p2

    new-instance p3, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->imageViewIcon:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->textViewName:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast v2, Landroid/view/View;

    invoke-direct {p3, v0, v1, v2}, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 134
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->sourceViewPager:Lru/rocketbank/r2d2/widget/AccountWidget;

    if-nez v3, :cond_20

    const-string p2, "sourceViewPager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lru/rocketbank/r2d2/widget/AccountWidget;->ROCKET_FILTER:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup$default(Lru/rocketbank/r2d2/widget/AccountWidget;Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;ILjava/lang/Object;)V

    .line 136
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Lru/rocketbank/core/widgets/RocketEditText;->clearFocus()V

    :cond_21
    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick(Lru/rocketbank/core/network/model/PaymentRequest;)V
    .locals 4

    const-string v0, "requestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-wide v0, v0, Lru/rocketbank/core/model/transfers/Template;->amount:D

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 176
    :cond_1
    iget-boolean v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->hasCommission:Z

    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comission1TextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ""

    :cond_3
    const v2, 0x7f110314

    .line 178
    new-instance v3, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onNextButtonClick$1;

    invoke-direct {v3, p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onNextButtonClick$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lru/rocketbank/core/network/model/PaymentRequest;)V

    check-cast v3, Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 177
    invoke-static {v0, v1, v2, v3, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 180
    :cond_4
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->pay(Lru/rocketbank/core/network/model/PaymentRequest;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 247
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->commissionSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 248
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->selectAccountSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 249
    invoke-super {p0}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 225
    invoke-super {p0}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onResume()V

    .line 226
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->sourceViewPager:Lru/rocketbank/r2d2/widget/AccountWidget;

    if-nez v0, :cond_0

    const-string v1, "sourceViewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->getOnAccountSelected()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    .line 228
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 229
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onResume$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->selectAccountSubscription:Lrx/Subscription;

    .line 232
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    .line 233
    new-instance v1, Lru/rocketbank/core/utils/rx/TextObserverToDouble;

    invoke-direct {v1}, Lru/rocketbank/core/utils/rx/TextObserverToDouble;-><init>()V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->changeAmountSubscriber:Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->textSubscriptionAmount:Lrx/Subscription;

    return-void
.end method

.method public final onSetTransitionNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->imageViewIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->textViewName:Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setTransitionName(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 264
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-wide v0, p1, Lru/rocketbank/core/model/transfers/Template;->amount:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->updateEditText(Ljava/lang/Double;)V

    return-void
.end method

.method public final pay(Lru/rocketbank/core/network/model/PaymentRequest;)V
    .locals 7

    const-string v0, "requestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    :cond_1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "%f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-wide v5, v5, Lru/rocketbank/core/model/transfers/Template;->amount:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/network/model/PaymentRequest;->setAmount(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/network/model/PaymentRequest;->setProvider_id(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/network/model/PaymentRequest;->setCard_token(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentStatusActivity;->Companion:Lru/rocketbank/r2d2/payment/PaymentStatusActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PaymentRequest;->getMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/payment/PaymentStatusActivity$Companion;->createIntent(Landroid/app/Activity;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final setCurrencyManager(Lru/rocketbank/core/manager/CurrencyManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-void
.end method

.method public final setProvidersApi(Lru/rocketbank/core/network/api/ProvidersApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    return-void
.end method

.method public final setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public final updateEditText(Ljava/lang/Double;)V
    .locals 7

    .line 268
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->commissionSubscription:Lrx/Subscription;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->commissionSubscription:Lrx/Subscription;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 269
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->commissionSubscription:Lrx/Subscription;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 271
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 273
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->viewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 274
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comission1TextView:Landroid/widget/TextView;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_3

    .line 281
    :cond_9
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->checkAmount()V

    .line 283
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez p1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/Provider;->isCommission()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 284
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    check-cast p1, Ljava/lang/CharSequence;

    .line 338
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    move v4, v1

    move v3, v2

    move v2, v4

    :goto_0
    if-gt v2, v3, :cond_11

    if-nez v4, :cond_d

    move v5, v2

    goto :goto_1

    :cond_d
    move v5, v3

    .line 343
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_e

    move v5, v0

    goto :goto_2

    :cond_e
    move v5, v1

    :goto_2
    if-nez v4, :cond_10

    if-nez v5, :cond_f

    move v4, v0

    goto :goto_0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_10
    if-eqz v5, :cond_11

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_11
    add-int/2addr v3, v0

    .line 359
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_12

    move v1, v0

    :cond_12
    if-eqz v1, :cond_14

    .line 287
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz p1, :cond_13

    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_13
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->edittextAmount:Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(I)V

    .line 291
    :cond_14
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->viewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez p1, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_15
    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 295
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    if-nez p1, :cond_16

    const-string v0, "providersApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v0, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_17
    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getId()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez v2, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    iget-wide v2, v2, Lru/rocketbank/core/model/transfers/Template;->amount:D

    invoke-interface {p1, v0, v1, v2, v3}, Lru/rocketbank/core/network/api/ProvidersApi;->commission(JD)Lrx/Observable;

    move-result-object p1

    .line 296
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lrx/Observable;->onBackpressureDrop()Lrx/Observable;

    move-result-object p1

    .line 298
    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->commissionSubscription:Lrx/Subscription;

    return-void

    .line 318
    :cond_19
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->comission1TextView:Landroid/widget/TextView;

    if-nez p1, :cond_1a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1a
    const v0, 0x7f1104e0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 277
    :cond_1b
    :goto_3
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->buttonNext:Landroid/widget/Button;

    if-nez p1, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1c
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
