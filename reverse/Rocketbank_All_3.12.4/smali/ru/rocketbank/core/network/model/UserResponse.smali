.class public Lru/rocketbank/core/network/model/UserResponse;
.super Ljava/lang/Object;
.source "UserResponse.kt"


# instance fields
.field private final user:Lru/rocketbank/core/model/UserModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/UserResponse;->user:Lru/rocketbank/core/model/UserModel;

    return-void
.end method


# virtual methods
.method public final getUser()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/UserResponse;->user:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method
