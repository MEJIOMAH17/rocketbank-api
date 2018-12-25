.class public abstract Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "BaseAmountActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseAmountActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseAmountActivity.kt\nru/rocketbank/r2d2/activities/c2c/BaseAmountActivity\n*L\n1#1,305:1\n*E\n"
.end annotation


# static fields
.field private static final CARD_DATA_EXTRA:Ljava/lang/String; = "CARD_DATA_EXTRA"

.field private static final CARD_EXTRA:Ljava/lang/String; = "CARD_EXTRA"

.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;

.field private static final STATE_COMMISSION_LOADED:I = 0x0

.field private static final STATE_COMMISSION_LOADING:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountFrom:Lru/rocketbank/core/model/facade/Account;

.field protected activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

.field private amount:D

.field protected amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

.field private cardData:Lru/rocketbank/core/model/CardData;

.field private cardModel:Lru/rocketbank/core/model/CardModel;

.field private final changeAmountSubscriber:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private enoughMoney:Z

.field private selectAccountSubscription:Lrx/Subscription;

.field private textAmountSubscription:Lrx/Subscription;

.field protected toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 174
    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$changeAmountSubscriber$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$changeAmountSubscriber$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;)V

    check-cast v0, Lrx/functions/Action1;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->changeAmountSubscriber:Lrx/functions/Action1;

    return-void
.end method

.method public static final synthetic access$checkAmount(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->checkAmount()V

    return-void
.end method

.method public static final synthetic access$getCARD_DATA_EXTRA$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->CARD_DATA_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCARD_EXTRA$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->CARD_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onSelectAccount(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->onSelectAccount(Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method

.method private final checkAmount()V
    .locals 6

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    .line 113
    sget v1, Lru/rocketbank/r2d2/R$id;->accountWidget:I

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getEnoughMoney()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f060228

    goto :goto_0

    :cond_1
    const v2, 0x7f06006e

    :goto_0
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/widget/AccountWidget;->highlightAmount(I)V

    .line 114
    iget-wide v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amount:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/4 v1, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getEnoughMoney()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "commissionSwitcher"

    .line 126
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 127
    sget v2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->STATE_COMMISSION_LOADING:I

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v0, :cond_3

    const-string v2, "toolbarBindingData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 130
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->requestComission()V

    return-void

    :cond_4
    :goto_1
    const-string v2, "commissionSwitcher"

    .line 115
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->STATE_COMMISSION_LOADED:I

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    const/16 v2, 0x8

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez v0, :cond_5

    const-string v2, "amountCardBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommission()Landroid/databinding/ObservableField;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v0, :cond_6

    const-string v2, "toolbarBindingData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method private final onSelectAccount(Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    .line 107
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->checkAmount()V

    return-void
.end method

.method private final setTransferInfo()V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->extractPan()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez v1, :cond_1

    const-string v2, "amountCardBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCardNumber()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 278
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-nez v0, :cond_3

    const v0, 0x7f11030c

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/model/CardModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez v1, :cond_5

    const-string v2, "amountCardBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCardName()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateCardView(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 240
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 241
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_1

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->backround:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 245
    :cond_2
    move-object p1, p0

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const v0, 0x7f080298

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_3

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->backround:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final updateCardViewFromModel(Lru/rocketbank/core/model/CardModel;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getSmall2xUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 253
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 254
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_1

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->backround:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 258
    :cond_2
    move-object p1, p0

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const v0, 0x7f080298

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_3

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->backround:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final extractBin()Ljava/lang/String;
    .locals 3

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->extractPan()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final extractPan()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lru/rocketbank/core/model/CardModel;->getPan()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardData:Lru/rocketbank/core/model/CardData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/CardData;->getPan()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getActivityCardTransferAmountBinding()Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
    .locals 2

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getAmount()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amount:D

    return-wide v0
.end method

.method protected final getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;
    .locals 2

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez v0, :cond_0

    const-string v1, "amountCardBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getCardData()Lru/rocketbank/core/model/CardData;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardData:Lru/rocketbank/core/model/CardData;

    return-object v0
.end method

.method protected final getCardModel()Lru/rocketbank/core/model/CardModel;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    return-object v0
.end method

.method protected getEnoughMoney()Z
    .locals 8

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v2

    iget-wide v4, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amount:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    const/4 v6, 0x1

    if-ltz v0, :cond_0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v6, :cond_1

    return v6

    :cond_1
    return v1
.end method

.method protected final getToolbarBindingData()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 2

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v0, :cond_0

    const-string v1, "toolbarBindingData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final init(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "actionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    invoke-direct {v0, p2}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    .line 75
    new-instance p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const v0, 0x7f110055

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1, v1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->CARD_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/CardModel;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->CARD_DATA_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/CardData;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardData:Lru/rocketbank/core/model/CardData;

    .line 81
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f0c002c

    invoke-static {p1, p2}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.setConte\u2026ity_card_transfer_amount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez p1, :cond_0

    const-string p2, "activityCardTransferAmountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez p1, :cond_1

    const-string p2, "activityCardTransferAmountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez p2, :cond_2

    const-string v0, "toolbarBindingData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 84
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez p1, :cond_3

    const-string p2, "activityCardTransferAmountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez p2, :cond_4

    const-string v0, "amountCardBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setAmountBinding(Lru/rocketbank/r2d2/data/binding/AmountCardBinding;)V

    .line 86
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez p1, :cond_5

    const-string p2, "activityCardTransferAmountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string p2, "activityCardTransferAmou\u2026ng.toolbarBlock!!.toolbar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    :cond_7
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez p1, :cond_8

    const-string p2, "activityCardTransferAmountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup$default(Lru/rocketbank/r2d2/widget/AccountWidget;Landroid/support/v4/app/FragmentManager;Ljava/util/Set;ILjava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->setTransferInfo()V

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->updateBin()V

    .line 95
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez p1, :cond_9

    const-string p2, "activityCardTransferAmountBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->amount:Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "activityCardTransferAmountBinding.amount"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance p2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$init$1;

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$init$1;-><init>(Lru/rocketbank/core/widgets/RocketEditText;Landroid/widget/EditText;)V

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-nez p3, :cond_a

    const-string p2, "0"

    .line 100
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public nextPressed(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez v0, :cond_0

    const-string v1, "amountCardBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommission()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v1, :cond_1

    const-string v2, "toolbarBindingData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButton()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$nextPressed$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$nextPressed$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;)V

    check-cast v2, Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBinResponse(Lru/rocketbank/core/model/dto/BinResponseData;)V
    .locals 2

    const-string v0, "binResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lru/rocketbank/core/model/dto/BinResponseData;->small2xUrl:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-nez v1, :cond_0

    .line 150
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->updateCardView(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->updateBin(Lru/rocketbank/core/model/dto/BinResponseData;)V

    return-void
.end method

.method public final onBinResponseFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez p1, :cond_0

    const-string v0, "amountCardBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public final onCommissionFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 183
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->CARD_EXTRA:Ljava/lang/String;

    const-string v1, "Failed commission"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez p1, :cond_0

    const-string v0, "amountCardBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommission()Landroid/databinding/ObservableField;

    move-result-object p1

    const v0, 0x7f110454

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez p1, :cond_1

    const-string v0, "activityCardTransferAmountBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    const-string v0, "commissionSwitcher"

    .line 188
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->STATE_COMMISSION_LOADED:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 189
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez p1, :cond_2

    const-string v0, "toolbarBindingData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final onCommissionResult(Lru/rocketbank/core/model/response/CommissionStringResponse;)V
    .locals 8

    const-string v0, "commissionStringResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    .line 195
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez v1, :cond_1

    const-string v2, "amountCardBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommission()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionStringResponse;->getText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string/jumbo v3, "\u0452"

    const-string/jumbo v4, "\u20bd"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const-string v1, "commissionSwitcher"

    .line 196
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->STATE_COMMISSION_LOADED:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 198
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionStringResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v0, :cond_3

    const-string v1, "toolbarBindingData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getEnoughMoney()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionStringResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OK"

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionStringResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WARNING"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    invoke-virtual {v0, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    :cond_6
    return-void
.end method

.method public abstract onNextPressed()V
.end method

.method protected onPause()V
    .locals 1

    .line 283
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onPause()V

    .line 285
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->textAmountSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->unsubscribe(Lrx/Subscription;)V

    .line 286
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->selectAccountSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->unsubscribe(Lrx/Subscription;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 223
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onResume()V

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->getOnAccountSelected()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    .line 227
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 228
    new-instance v1, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$onResume$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->selectAccountSubscription:Lrx/Subscription;

    .line 229
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->updateBin()V

    .line 231
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 232
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    if-nez v0, :cond_1

    const-string v1, "activityCardTransferAmountBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->amount:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "activityCardTransferAmountBinding.amount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    .line 235
    new-instance v1, Lru/rocketbank/core/utils/rx/TextObserverToDouble;

    invoke-direct {v1}, Lru/rocketbank/core/utils/rx/TextObserverToDouble;-><init>()V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->changeAmountSubscriber:Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->textAmountSubscription:Lrx/Subscription;

    return-void
.end method

.method public abstract requestComission()V
.end method

.method protected final requestIncomeComeComission()V
    .locals 8

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 205
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->extractBin()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    iget-wide v2, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amount:D

    .line 209
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestIncomeComeComission$1;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestIncomeComeComission$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 210
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestIncomeComeComission$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestIncomeComeComission$2;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 208
    invoke-virtual/range {v1 .. v7}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->incomeCommission(DLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method protected final requestOutComeComission()V
    .locals 8

    .line 214
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 215
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->extractBin()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    iget-wide v2, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amount:D

    .line 218
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestOutComeComission$1;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestOutComeComission$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 219
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestOutComeComission$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$requestOutComeComission$2;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 217
    invoke-virtual/range {v1 .. v7}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->outcomeCommission(DLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method protected final setActivityCardTransferAmountBinding(Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->activityCardTransferAmountBinding:Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    return-void
.end method

.method protected final setAmount(D)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amount:D

    return-void
.end method

.method protected final setAmountCardBinding(Lru/rocketbank/r2d2/data/binding/AmountCardBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    return-void
.end method

.method protected final setCardData(Lru/rocketbank/core/model/CardData;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardData:Lru/rocketbank/core/model/CardData;

    return-void
.end method

.method protected final setCardModel(Lru/rocketbank/core/model/CardModel;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    return-void
.end method

.method protected setEnoughMoney(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->enoughMoney:Z

    return-void
.end method

.method protected final setToolbarBindingData(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->toolbarBindingData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-void
.end method

.method protected final updateBin()V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->extractPan()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    .line 161
    sget-object v2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$1;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 162
    sget-object v3, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 160
    invoke-virtual {v1, v0, v2, v3}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->binRequest(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->amountCardBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    if-nez v0, :cond_1

    const-string v1, "amountCardBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 168
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-eqz v0, :cond_2

    .line 170
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->updateCardViewFromModel(Lru/rocketbank/core/model/CardModel;)V

    :cond_2
    return-void
.end method

.method public abstract updateBin(Lru/rocketbank/core/model/dto/BinResponseData;)V
.end method
