.class public final Lru/rocketbank/core/network/model/ProfileChange;
.super Ljava/lang/Object;
.source "ProfileChange.kt"


# instance fields
.field private shortTermLogin:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user[short_term_login]"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortTermLogin()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/ProfileChange;->shortTermLogin:Z

    return v0
.end method

.method public final setShortTermLogin(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/ProfileChange;->shortTermLogin:Z

    return-void
.end method
