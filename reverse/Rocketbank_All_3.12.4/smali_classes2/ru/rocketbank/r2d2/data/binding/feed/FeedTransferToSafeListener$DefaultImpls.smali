.class public final Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$DefaultImpls;
.super Ljava/lang/Object;
.source "FeedTransferToSafeListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static confirmClicked(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$confirmClicked$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$confirmClicked$1;-><init>(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0, p1, v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;->handle(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static handle(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "func"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "func"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1010
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 1011
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    .line 1012
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static infoClicked(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$infoClicked$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$infoClicked$1;-><init>(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0, p1, v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;->handle(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
