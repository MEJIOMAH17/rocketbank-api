.class public final Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$subscribeLocation$1;
.super Lrx/Subscriber;
.source "MapViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->subscribeLocation()Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$subscribeLocation$1;->this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onNext(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$subscribeLocation$1;->this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->access$setPinBitmap$p(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$subscribeLocation$1;->onNext(Landroid/graphics/Bitmap;)V

    return-void
.end method
