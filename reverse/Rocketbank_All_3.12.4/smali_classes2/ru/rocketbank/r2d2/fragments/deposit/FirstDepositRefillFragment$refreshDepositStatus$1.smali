.class public final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;
.super Lrx/Subscriber;
.source "FirstDepositRefillFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refreshDepositStatus(Ljava/math/BigDecimal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/DepositRefillResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getDepositApiSubscriptions$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    const-string v0, "FirstDeposit"

    const-string v1, "refreshDepositStatus"

    .line 318
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getProgressBar$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1014
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    const v1, 0x7f11018f

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextInputLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setErrorEnabled(Z)V

    .line 324
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refreshOpenButton(Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 311
    check-cast p1, Lru/rocketbank/core/network/model/DepositRefillResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->onNext(Lru/rocketbank/core/network/model/DepositRefillResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/DepositRefillResponse;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "depositRefillResponse"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getDepositApiSubscriptions$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/Subscription;

    move-result-object v1

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 330
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getProgressBar$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v3, "$receiver"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 2014
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ok"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    .line 333
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getFrom()Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getTo()Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v5}, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 336
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v5

    iget-object v6, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 337
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v6

    const/4 v7, 0x7

    iget-object v8, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    const/high16 v7, 0x41600000    # 14.0f

    .line 339
    iget-object v8, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v8}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getDisplayMetrics$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 341
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getFrom()Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    move-result-object v8

    .line 342
    iget-object v9, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v9}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getMoneyFormatter$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v9

    if-nez v8, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v8}, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->getAmount()D

    move-result-wide v10

    invoke-virtual {v8}, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->getCurrency()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v9, v10, v11, v8, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 344
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getTo()Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    move-result-object v9

    .line 345
    iget-object v10, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v10}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getMoneyFormatter$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v10

    if-nez v9, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v9}, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->getAmount()D

    move-result-wide v11

    invoke-virtual {v9}, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->getCurrency()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v10, v11, v12, v9, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 347
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getRate()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_6

    .line 352
    iget-object v11, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    const v12, 0x7f110149

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v8, v13, v3

    invoke-virtual {v11, v12, v13}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getString(R.string.depos\u2026e_rate, fromDetailString)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_6
    iget-object v11, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    const v12, 0x7f110148

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v3

    aput-object v9, v13, v4

    const/4 v14, 0x2

    aput-object v10, v13, v14

    invoke-virtual {v11, v12, v13}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getString(R.string.depos\u2026DetailString, rateString)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    :goto_0
    new-instance v15, Landroid/text/SpannableString;

    move-object v14, v11

    check-cast v14, Ljava/lang/CharSequence;

    invoke-direct {v15, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v12, "FirstDeposit"

    const-string v13, "formattedString: "

    .line 358
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v11, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v11, v5, v7}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    .line 361
    new-instance v13, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v13, v6, v7}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    move-object v12, v14

    move-object v3, v13

    move-object v13, v8

    move-object/from16 v20, v14

    move/from16 v14, v16

    move-object/from16 v21, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    .line 363
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    .line 364
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v12

    sub-int/2addr v8, v4

    add-int/lit8 v15, v8, 0x1

    const/16 v14, 0x12

    move-object/from16 v13, v21

    .line 366
    invoke-virtual {v13, v11, v12, v8, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 367
    invoke-virtual {v13, v3, v8, v15, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 369
    new-instance v3, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v3, v5, v7}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    .line 370
    new-instance v8, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v8, v6, v7}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    if-nez v1, :cond_7

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v1, v13

    move-object/from16 v13, v20

    move v6, v14

    move-object v14, v9

    .line 373
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v11

    .line 374
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v11

    sub-int/2addr v9, v4

    add-int/lit8 v14, v9, 0x1

    .line 376
    invoke-virtual {v1, v3, v11, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 377
    invoke-virtual {v1, v8, v9, v14, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 379
    new-instance v3, Lru/rocketbank/core/widgets/TypefaceSpan;

    invoke-direct {v3, v5, v7}, Lru/rocketbank/core/widgets/TypefaceSpan;-><init>(Landroid/graphics/Typeface;I)V

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object/from16 v12, v20

    move-object v13, v10

    .line 381
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    .line 382
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    .line 383
    invoke-virtual {v1, v3, v5, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    move-object v1, v13

    .line 386
    :goto_1
    iget-object v3, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getRefillInformationView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object v3

    move-object v15, v1

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v3, v15}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getTo()Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v2}, Lru/rocketbank/core/network/model/DepositRefillResponse$RefillDetail;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$setAmount$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Ljava/math/BigDecimal;)V

    .line 390
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refreshOpenButton(Z)V

    .line 391
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextInputLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextInputLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setErrorEnabled(Z)V

    .line 394
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getRefillInformationView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 396
    :cond_9
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextInputLayout;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/DepositRefillResponse;->getText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setErrorEnabled(Z)V

    .line 398
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refreshOpenButton(Z)V

    return-void
.end method
