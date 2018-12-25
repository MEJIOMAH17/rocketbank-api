.class public final Lru/rocketbank/r2d2/activities/PhotoViewActivity$onResume$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PhotoViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/PhotoViewActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/PhotoViewActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/PhotoViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/PhotoViewActivity;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glideAnimation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/PhotoViewActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/PhotoViewActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/PhotoViewActivity;->access$getImageView$p(Lru/rocketbank/r2d2/activities/PhotoViewActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->uri(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    return-void
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 53
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/PhotoViewActivity$onResume$1;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
