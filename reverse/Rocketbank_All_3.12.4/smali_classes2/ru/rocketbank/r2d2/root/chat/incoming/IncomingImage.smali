.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;
.super Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;
.source "IncomingImage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomingImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingImage.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingImage\n*L\n1#1,121:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$Companion;

.field private static final NONE:I


# instance fields
.field private image:Lru/rocketbank/core/model/message/ImageAttachment;

.field private imageView:Landroid/widget/ImageView;

.field private final mode:I

.field private targetSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/SimpleTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->Companion:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 24
    sget v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->NONE:I

    iput v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->mode:I

    const v0, 0x7f0901c7

    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    .line 30
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    invoke-static {p2}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$1;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;Landroid/content/Context;)V

    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getImage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;)Lru/rocketbank/core/model/message/ImageAttachment;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->image:Lru/rocketbank/core/model/message/ImageAttachment;

    return-object p0
.end method

.method public static final synthetic access$loadHorizontal(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->loadHorizontal(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadVertical(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;Ljava/lang/String;F)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->loadVertical(Ljava/lang/String;F)V

    return-void
.end method

.method public static final synthetic access$setImage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;Lru/rocketbank/core/model/message/ImageAttachment;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->image:Lru/rocketbank/core/model/message/ImageAttachment;

    return-void
.end method

.method private final createSimpleTarget()Lcom/bumptech/glide/request/target/SimpleTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/SimpleTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;)V

    check-cast v0, Lcom/bumptech/glide/request/target/SimpleTarget;

    return-object v0
.end method

.method private final loadHorizontal(Ljava/lang/String;)V
    .locals 5

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    const v0, 0x7f0700ec

    .line 112
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getDimen(I)I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    new-instance v3, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Landroid/content/Context;II)V

    check-cast v3, Lcom/bumptech/glide/load/Transformation;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final loadVertical(Ljava/lang/String;F)V
    .locals 6

    const v0, 0x7f070071

    .line 84
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getDimen(I)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    const v1, 0x7f0700ec

    .line 94
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getDimen(I)I

    move-result v1

    .line 95
    iget v2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->mode:I

    sget v3, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->NONE:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    new-array p2, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Landroid/content/Context;II)V

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    aput-object v0, p2, v4

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    new-array p2, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Landroid/content/Context;II)V

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    aput-object v0, p2, v4

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/message/ImageAttachment;)V
    .locals 2

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->image:Lru/rocketbank/core/model/message/ImageAttachment;

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->targetSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->targetSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 51
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->createSimpleTarget()Lcom/bumptech/glide/request/target/SimpleTarget;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->targetSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;

    .line 53
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/ImageAttachment;->getImage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->targetSimpleTarget:Lcom/bumptech/glide/request/target/SimpleTarget;

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 36
    invoke-super {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->clear()V

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
