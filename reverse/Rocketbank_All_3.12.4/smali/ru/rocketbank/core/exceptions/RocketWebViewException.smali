.class public final Lru/rocketbank/core/exceptions/RocketWebViewException;
.super Lru/rocketbank/core/exceptions/RocketException;
.source "RocketWebViewException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/exceptions/RocketWebViewException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/exceptions/RocketWebViewException$Companion;

.field private static final serialVersionUID:J = 0x6dcc773144bb076aL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/exceptions/RocketWebViewException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/exceptions/RocketWebViewException$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/exceptions/RocketWebViewException;->Companion:Lru/rocketbank/core/exceptions/RocketWebViewException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;)V

    return-void
.end method
