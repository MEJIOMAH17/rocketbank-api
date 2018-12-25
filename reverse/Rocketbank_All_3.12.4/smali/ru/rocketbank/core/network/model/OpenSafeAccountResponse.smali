.class public final Lru/rocketbank/core/network/model/OpenSafeAccountResponse;
.super Ljava/lang/Object;
.source "OpenSafeAccountResponse.kt"


# instance fields
.field private account:Lru/rocketbank/core/model/SafeAccount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccount()Lru/rocketbank/core/model/SafeAccount;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/network/model/OpenSafeAccountResponse;->account:Lru/rocketbank/core/model/SafeAccount;

    return-object v0
.end method

.method public final setAccount(Lru/rocketbank/core/model/SafeAccount;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/network/model/OpenSafeAccountResponse;->account:Lru/rocketbank/core/model/SafeAccount;

    return-void
.end method
