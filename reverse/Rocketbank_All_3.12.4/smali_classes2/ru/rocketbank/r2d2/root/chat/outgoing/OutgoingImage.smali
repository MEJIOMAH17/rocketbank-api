.class public final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;
.super Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;
.source "OutgoingImage.kt"

# interfaces
.implements Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;
.implements Lru/rocketbank/r2d2/root/chat/base/ActionListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutgoingImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutgoingImage.kt\nru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage\n*L\n1#1,275:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

.field private final imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

.field private lastUploadState:Z

.field private message:Lru/rocketbank/core/model/message/MessageIn;

.field private final retryListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->retryListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    .line 34
    new-instance p3, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    invoke-direct {p3}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;-><init>()V

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    .line 71
    invoke-static {p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    move-result-object p2

    const-string p3, "LayoutMessageOutImageBinding.bind(itemView)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    .line 72
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object p3, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->setImageData(Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;)V

    .line 73
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    move-object p3, p0

    check-cast p3, Lru/rocketbank/r2d2/root/chat/base/ActionListener;

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->setListener(Lru/rocketbank/r2d2/root/chat/base/ActionListener;)V

    .line 75
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    const-string p3, "binding.indeterminateProgress"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;

    invoke-direct {p3, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic access$getImageData$p(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;)Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    return-object p0
.end method

.method private final extractImagePath()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->message:Lru/rocketbank/core/model/message/MessageIn;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getImage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private final loadHorizontal(Ljava/lang/String;IILandroid/net/Uri;)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getHorizontalMaxWidth()I

    move-result v0

    .line 169
    invoke-virtual {p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->widthPrepare(II)I

    move-result v0

    int-to-float v1, v0

    int-to-float p2, p2

    div-float/2addr v1, p2

    int-to-float p2, p3

    mul-float/2addr p2, v1

    float-to-int p2, p2

    if-nez p2, :cond_0

    const/16 p2, 0x64

    .line 175
    :cond_0
    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->resize(II)V

    .line 177
    iget-object p3, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p3

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    if-nez p4, :cond_1

    .line 179
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 180
    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 181
    new-instance p3, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;-><init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;)V

    check-cast p3, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/DrawableTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 201
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 202
    new-instance p3, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$2;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$2;-><init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;)V

    check-cast p3, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/DrawableTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 222
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 223
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const p3, -0x777778

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 224
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getTransformations$App_prodRelease()[Lcom/bumptech/glide/load/Transformation;

    move-result-object p2

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 225
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final loadVertical(Ljava/lang/String;IILandroid/net/Uri;)V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getVerticalMaxWidth()I

    move-result v0

    .line 147
    invoke-virtual {p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->widthPrepare(II)I

    move-result v0

    int-to-float v1, v0

    int-to-float p2, p2

    div-float/2addr v1, p2

    int-to-float p2, p3

    mul-float/2addr p2, v1

    float-to-int p2, p2

    if-nez p2, :cond_0

    const/16 p2, 0x64

    .line 153
    :cond_0
    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->resize(II)V

    if-nez p4, :cond_1

    .line 156
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    const-string p3, "Glide.with(context).load(image)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    const-string p3, "Glide.with(context).load(imageUri)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 162
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getTransformations$App_prodRelease()[Lcom/bumptech/glide/load/Transformation;

    move-result-object p2

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 163
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final resize(II)V
    .locals 2

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->content:Landroid/widget/FrameLayout;

    const-string v1, "binding.content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->content:Landroid/widget/FrameLayout;

    const-string v1, "binding.content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 269
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    const-string v1, "binding.contentImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 270
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    const-string v0, "binding.contentImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    const-string v1, "binding.contentImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 90
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/message/MessageIn;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    .line 91
    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->lastUploadState:Z

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->isUploading()Z

    move-result v2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->clear()V

    .line 98
    :cond_3
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->message:Lru/rocketbank/core/model/message/MessageIn;

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->isUploading()Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->lastUploadState:Z

    .line 101
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-nez v0, :cond_4

    return-void

    .line 104
    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getRetryVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->isFailed()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 106
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getWidth()I

    move-result p1

    .line 107
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getHeight()I

    move-result v1

    const/16 v2, 0x64

    if-nez v1, :cond_5

    move v1, v2

    :cond_5
    if-nez p1, :cond_6

    move p1, v2

    .line 112
    :cond_6
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->extractImagePath()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getImagePath()Landroid/net/Uri;

    move-result-object v0

    if-le p1, v1, :cond_7

    .line 116
    invoke-direct {p0, v2, p1, v1, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->loadHorizontal(Ljava/lang/String;IILandroid/net/Uri;)V

    return-void

    .line 118
    :cond_7
    invoke-direct {p0, v2, p1, v1, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->loadVertical(Ljava/lang/String;IILandroid/net/Uri;)V

    return-void
.end method

.method public final clear()V
    .locals 2

    .line 79
    invoke-super {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->clear()V

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getHorizontalMaxWidth()I
    .locals 2

    .line 239
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/view/WindowManager;

    .line 240
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 242
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 244
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getLastUploadState()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->lastUploadState:Z

    return v0
.end method

.method public final getRetryListener()Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->retryListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    return-object v0
.end method

.method public final getTransformations$App_prodRelease()[Lcom/bumptech/glide/load/Transformation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->isUploading()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0700ec

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getDimen(I)I

    move-result v0

    .line 133
    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Landroid/content/Context;II)V

    check-cast v3, Lcom/bumptech/glide/load/Transformation;

    aput-object v3, v2, v1

    return-object v2

    .line 135
    :cond_0
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getDimen(I)I

    move-result v0

    const/4 v3, 0x2

    .line 137
    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    new-instance v4, Ljp/wasabeef/glide/transformations/BlurTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(Landroid/content/Context;)V

    check-cast v4, Lcom/bumptech/glide/load/Transformation;

    aput-object v4, v3, v1

    .line 138
    new-instance v1, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v0, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Landroid/content/Context;II)V

    check-cast v1, Lcom/bumptech/glide/load/Transformation;

    aput-object v1, v3, v2

    return-object v3
.end method

.method public final getVerticalMaxWidth()I
    .locals 2

    .line 248
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/view/WindowManager;

    .line 249
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 253
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final isUploading()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->message:Lru/rocketbank/core/model/message/MessageIn;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->isUploading()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getUploading()Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    return v1

    :cond_4
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method public final onClick()V
    .locals 3

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-nez v0, :cond_1

    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getImagePath()Landroid/net/Uri;

    move-result-object v0

    .line 59
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->extractImagePath()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    .line 63
    sget-object v0, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->Companion:Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 66
    :cond_3
    sget-object v1, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->Companion:Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$Companion;->start(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onLoad(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
    .locals 1

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->binding:Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    const-string v0, "binding.indeterminateProgress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onRetry()V
    .locals 2

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->imageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getRetryVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->retryListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;->retry(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setLastUploadState(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->lastUploadState:Z

    return-void
.end method

.method public final widthPrepare(II)I
    .locals 0

    if-ge p2, p1, :cond_0

    return p2

    :cond_0
    return p1
.end method
