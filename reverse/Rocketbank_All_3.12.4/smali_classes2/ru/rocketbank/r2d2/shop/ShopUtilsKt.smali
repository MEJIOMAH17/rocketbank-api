.class public final Lru/rocketbank/r2d2/shop/ShopUtilsKt;
.super Ljava/lang/Object;
.source "ShopUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopUtils.kt\nru/rocketbank/r2d2/shop/ShopUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1246#2:174\n1315#2,3:175\n624#2:178\n713#2,2:179\n1519#2,2:181\n*E\n*S KotlinDebug\n*F\n+ 1 ShopUtils.kt\nru/rocketbank/r2d2/shop/ShopUtilsKt\n*L\n156#1:174\n156#1,3:175\n157#1:178\n157#1,2:179\n158#1,2:181\n*E\n"
.end annotation


# static fields
.field private static screenHeight:I


# direct methods
.method public static final amountAnimation(Lru/rocketbank/core/widgets/RocketTextView;DD)Landroid/animation/ValueAnimator;
    .locals 8

    const-string v0, "textView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lru/rocketbank/core/manager/CurrencyManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/CurrencyManager;-><init>()V

    .line 79
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v7

    .line 80
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "authorization"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    new-instance v2, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v2, v1, v7, v0}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 v0, 0x1

    .line 2044
    invoke-virtual {v2, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 81
    new-instance v1, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$format$1;

    invoke-direct {v1, v2}, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$format$1;-><init>(Lru/rocketbank/core/utils/MoneyFormatter;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 88
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    .line 89
    new-array v2, v2, [I

    double-to-int p1, p1

    const/4 p2, 0x0

    aput p1, v2, p2

    double-to-int p1, p3

    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 90
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast p1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "textView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v7}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const-string v2, "userData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3043
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 4029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 3043
    invoke-virtual {v2, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 3011
    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v0

    .line 92
    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance p2, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$1;

    invoke-direct {p2, p0, v4, p1}, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$1;-><init>(Lru/rocketbank/core/widgets/RocketTextView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    check-cast p2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    new-instance p1, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;

    move-object v2, p1

    move-object v3, p0

    move-wide v5, p3

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;-><init>(Lru/rocketbank/core/widgets/RocketTextView;Lkotlin/jvm/functions/Function1;DLru/rocketbank/core/user/Authorization;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method public static final varargs bringPromoText(ZLandroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;[I)V
    .locals 4

    const-string v0, "textViewPromo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignoreIDS"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void

    .line 154
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    .line 155
    new-instance p0, Lkotlin/ranges/IntRange;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast p0, Ljava/lang/Iterable;

    .line 174
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 175
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 156
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 178
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 179
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    const-string v2, "it"

    .line 157
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {p4, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0903ac

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0901cc

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0903ba

    if-eq v1, v2, :cond_3

    move v1, p2

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_4
    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 181
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static final calculateNumOfColumns(Landroid/content/Context;I)I
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 165
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070178

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v4

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f070168

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    div-float/2addr v2, p0

    float-to-int p0, v2

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    const/4 p1, 0x5

    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static final createCartItemAmountText(Landroid/content/Context;D)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    .line 117
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v1

    .line 118
    new-instance v2, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v2, p0, v0, v1}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    .line 119
    sget-object p0, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 4105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 119
    invoke-virtual {v2, p1, p2, p0, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    move-result-object p0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getAmountString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getSuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final createColorCircle(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "imageView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$createColorCircle$1;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/shop/ShopUtilsKt$createColorCircle$1;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    .line 145
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 146
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 147
    new-instance v0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$createColorCircle$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/ShopUtilsKt$createColorCircle$2;-><init>(Landroid/widget/ImageView;)V

    check-cast v0, Lrx/functions/Action1;

    sget-object p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$createColorCircle$3;->INSTANCE:Lru/rocketbank/r2d2/shop/ShopUtilsKt$createColorCircle$3;

    check-cast p0, Lrx/functions/Action1;

    invoke-virtual {p1, v0, p0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public static final createShopItemAmountText(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;I)Landroid/text/SpannableStringBuilder;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice_replacement()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 42
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice_replacement()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 45
    :cond_2
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    .line 46
    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v2

    invoke-interface {v2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v2

    .line 48
    new-instance v3, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v3, p0, v0, v2}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    .line 50
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 51
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice_old()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 52
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice_old()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice()D

    move-result-wide v4

    :goto_2
    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 54
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 56
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 53
    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/16 v5, 0x80

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {v5, v7, v8, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-direct {v4, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 62
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 59
    invoke-virtual {v2, v4, v1, p2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p2, " "

    .line 65
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice()D

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice()D

    move-result-wide v4

    const-string p2, ""

    invoke-virtual {v3, v4, v5, p2, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    const-string p2, " "

    .line 71
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const-string v1, "userData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-virtual {v1, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method public static bridge synthetic createShopItemAmountText$default(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getTextColor()I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->createShopItemAmountText(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "c"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget v0, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->screenHeight:I

    if-nez v0, :cond_1

    const-string v0, "window"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/view/WindowManager;

    .line 128
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 129
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 131
    iget p0, v0, Landroid/graphics/Point;->y:I

    sput p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->screenHeight:I

    .line 134
    :cond_1
    sget p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->screenHeight:I

    return p0
.end method
