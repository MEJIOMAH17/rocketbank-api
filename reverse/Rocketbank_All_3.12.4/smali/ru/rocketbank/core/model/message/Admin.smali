.class public final Lru/rocketbank/core/model/message/Admin;
.super Ljava/lang/Object;
.source "Admin.kt"


# instance fields
.field private permalink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/rocketbank/core/model/message/Admin;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public final setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lru/rocketbank/core/model/message/Admin;->permalink:Ljava/lang/String;

    return-void
.end method
