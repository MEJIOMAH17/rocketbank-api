.class public final Lru/rocketbank/core/network/model/PatchProfileBody$UserName;
.super Ljava/lang/Object;
.source "PatchProfileBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/PatchProfileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserName"
.end annotation


# instance fields
.field private value:Ljava/lang/String;

.field private works:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorks()Ljava/lang/Boolean;
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;->works:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;->value:Ljava/lang/String;

    return-void
.end method

.method public final setWorks(Ljava/lang/Boolean;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;->works:Ljava/lang/Boolean;

    return-void
.end method
