.class public final Lru/rocketbank/core/network/model/PatchProfileBody;
.super Ljava/lang/Object;
.source "PatchProfileBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/PatchProfileBody$User;,
        Lru/rocketbank/core/network/model/PatchProfileBody$UserName;
    }
.end annotation


# instance fields
.field public user:Lru/rocketbank/core/network/model/PatchProfileBody$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    const-string v0, "fbToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody$User;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PatchProfileBody$User;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez v0, :cond_0

    const-string v1, "user"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setFacebookId(Ljava/lang/Long;)V

    .line 27
    iget-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez p1, :cond_1

    const-string p2, "user"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p3}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setFacebookToken(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody$User;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PatchProfileBody$User;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez v0, :cond_0

    const-string v1, "user"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setSound(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody$User;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PatchProfileBody$User;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez v0, :cond_0

    const-string v1, "user"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setDriver_licence(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez p1, :cond_1

    const-string v0, "user"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setCtc(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez p1, :cond_2

    const-string p2, "user"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p3}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setInn(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez p1, :cond_3

    const-string p2, "user"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p4}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setPenalty_tax_notifications(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;
    .locals 2

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    if-nez v0, :cond_0

    const-string v1, "user"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setUser(Lru/rocketbank/core/network/model/PatchProfileBody$User;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody;->user:Lru/rocketbank/core/network/model/PatchProfileBody$User;

    return-void
.end method
