.class public final Lru/rocketbank/core/exceptions/EnterPhoneException;
.super Lru/rocketbank/core/exceptions/RocketException;
.source "RocketException.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
