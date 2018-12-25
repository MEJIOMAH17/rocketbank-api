.class public final Lru/rocketbank/core/model/TokenRequestData;
.super Ljava/lang/Object;
.source "TokenRequestData.kt"


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/TokenRequestData;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lru/rocketbank/core/model/TokenRequestData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lru/rocketbank/core/model/TokenRequestData;->token:Ljava/lang/String;

    return-void
.end method
