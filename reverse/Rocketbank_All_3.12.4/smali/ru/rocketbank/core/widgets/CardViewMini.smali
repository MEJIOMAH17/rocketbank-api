.class public final Lru/rocketbank/core/widgets/CardViewMini;
.super Landroid/widget/FrameLayout;
.source "CardViewMini.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardViewMini.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardViewMini.kt\nru/rocketbank/core/widgets/CardViewMini\n*L\n1#1,112:1\n*E\n"
.end annotation


# instance fields
.field private cardActionsListener:Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

.field private cardView:Landroid/support/v7/widget/CardView;

.field private imageViewBackground:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2036
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CardViewMini;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0c014f

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0900c5

    .line 2037
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CardViewMini;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.cardView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CardViewMini;->cardView:Landroid/support/v7/widget/CardView;

    const p1, 0x7f0901d1

    .line 2038
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CardViewMini;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.imageViewBackground)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic access$getCardActionsListener$p(Lru/rocketbank/core/widgets/CardViewMini;)Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lru/rocketbank/core/widgets/CardViewMini;->cardActionsListener:Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    return-object p0
.end method


# virtual methods
.method public final resetImage()V
    .locals 2

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "imageViewBackground"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCard(Lru/rocketbank/core/model/CardModel;)V
    .locals 9

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 43
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/16 v4, 0x10

    if-nez v1, :cond_2

    .line 44
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/CardViewMini;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1067
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CardViewMini;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080298

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v5, "bitmap"

    .line 1068
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    new-instance v5, Lru/rocketbank/core/widgets/RoundCornersDrawable;

    .line 1086
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CardViewMini;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700f9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iget-object v7, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    if-nez v7, :cond_3

    const-string v8, "imageViewBackground"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    iget-object v7, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    if-nez v7, :cond_4

    const-string v8, "imageViewBackground"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    .line 1085
    invoke-direct {v5, v0, v6}, Lru/rocketbank/core/widgets/RoundCornersDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    .line 1087
    iget-object v0, p0, Lru/rocketbank/core/widgets/CardViewMini;->cardView:Landroid/support/v7/widget/CardView;

    if-nez v0, :cond_5

    const-string v6, "cardView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 1088
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    .line 1089
    iget-object v0, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const-string v6, "imageViewBackground"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1091
    :cond_7
    iget-object v0, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    const-string v6, "imageViewBackground"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    :goto_2
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CardViewMini;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    if-nez v1, :cond_9

    const-string v5, "imageViewBackground"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :goto_3
    const v0, 0x7f090226

    .line 49
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/CardViewMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getLogo()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    move v1, v3

    goto :goto_5

    :cond_b
    :goto_4
    move v1, v2

    :goto_5
    if-nez v1, :cond_d

    .line 51
    sget-object v1, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    const-string v5, "logo"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getLogo()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v1, v0, v5}, Lru/rocketbank/core/utils/ImageHelper;->loadNoPlaceholder(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_d
    const v0, 0x7f090283

    .line 54
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/CardViewMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09026c

    .line 55
    invoke-virtual {p0, v1}, Lru/rocketbank/core/widgets/CardViewMini;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v5, "name"

    .line 57
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "number"

    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getPan()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    if-nez v6, :cond_f

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const/16 v7, 0xc

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v5, v3

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901b8

    .line 60
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/CardViewMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/widgets/CardViewMini$setCard$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/widgets/CardViewMini$setCard$1;-><init>(Lru/rocketbank/core/widgets/CardViewMini;Lru/rocketbank/core/model/CardModel;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setCardActionsListener(Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;)V
    .locals 1

    const-string v0, "cardActionsListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lru/rocketbank/core/widgets/CardViewMini;->cardActionsListener:Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 79
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CardViewMini;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/CardViewMini;->imageViewBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const-string v1, "imageViewBackground"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_3
    return-void
.end method
