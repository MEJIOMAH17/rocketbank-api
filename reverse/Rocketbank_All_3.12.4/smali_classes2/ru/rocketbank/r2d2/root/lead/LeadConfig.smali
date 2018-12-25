.class public final Lru/rocketbank/r2d2/root/lead/LeadConfig;
.super Ljava/lang/Object;
.source "LeadConfig.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/lead/LeadConfig;

.field private static final backgroundDarkness:F = -0.36f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lru/rocketbank/r2d2/root/lead/LeadConfig;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/lead/LeadConfig;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/lead/LeadConfig;->INSTANCE:Lru/rocketbank/r2d2/root/lead/LeadConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackgroundDarkness()F
    .locals 1

    .line 13
    sget v0, Lru/rocketbank/r2d2/root/lead/LeadConfig;->backgroundDarkness:F

    return v0
.end method

.method public final showBackground(Landroid/widget/ImageView;)V
    .locals 6

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f08029f

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    .line 21
    new-instance v2, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x5f

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-direct {v2, v3, v5}, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;-><init>(Landroid/content/Context;I)V

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v1, v4

    .line 22
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v3

    const-string v4, "Glide.get(background.context)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 21
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
