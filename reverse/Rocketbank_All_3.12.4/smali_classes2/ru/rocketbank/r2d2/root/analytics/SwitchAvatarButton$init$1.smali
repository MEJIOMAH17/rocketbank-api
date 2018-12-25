.class public final Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SwitchAvatarButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glideAnimation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-static {p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$getMovingAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    .line 63
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-static {p2, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$setMovingAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Landroid/graphics/Bitmap;)V

    .line 65
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-static {p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$getStaticAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    .line 66
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-static {p2, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$setStaticAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Landroid/graphics/Bitmap;)V

    .line 68
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->invalidate()V

    return-void
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 60
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
