.class final Lru/rocketbank/core/user/Authorization$setUserModel$1;
.super Ljava/lang/Object;
.source "Authorization.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/user/Authorization$setUserModel$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/user/Authorization$setUserModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/user/Authorization$setUserModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/user/Authorization$setUserModel$1;->INSTANCE:Lru/rocketbank/core/user/Authorization$setUserModel$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 1237
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    const-string v1, "mode"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/utils/SoundNotification;->setSelectedMode(I)V

    .line 1238
    sget-object p1, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {p1}, Lru/rocketbank/core/utils/SoundNotification;->recreate()V

    const/4 p1, 0x0

    return-object p1
.end method
