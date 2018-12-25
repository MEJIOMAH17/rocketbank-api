.class public final Lru/rocketbank/core/model/contact/InvitedFriend;
.super Ljava/lang/Object;
.source "InvitedFriend.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvitedFriend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvitedFriend.kt\nru/rocketbank/core/model/contact/InvitedFriend\n*L\n1#1,26:1\n*E\n"
.end annotation


# instance fields
.field private displayStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_status"
    .end annotation
.end field

.field private friendRevenue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend_revenue"
    .end annotation
.end field

.field private revenue:D

.field private status:Ljava/lang/String;

.field private user:Lru/rocketbank/core/model/contact/ServerContact;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->user:Lru/rocketbank/core/model/contact/ServerContact;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/ServerContact;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->user:Lru/rocketbank/core/model/contact/ServerContact;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/ServerContact;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDisplayStatus()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->displayStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getFriendRevenue()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->friendRevenue:D

    return-wide v0
.end method

.method public final getRevenue()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->revenue:D

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lru/rocketbank/core/model/contact/ServerContact;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->user:Lru/rocketbank/core/model/contact/ServerContact;

    return-object v0
.end method

.method public final setDisplayStatus(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->displayStatus:Ljava/lang/String;

    return-void
.end method

.method public final setFriendRevenue(D)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->friendRevenue:D

    return-void
.end method

.method public final setRevenue(D)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->revenue:D

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->status:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lru/rocketbank/core/model/contact/ServerContact;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/contact/InvitedFriend;->user:Lru/rocketbank/core/model/contact/ServerContact;

    return-void
.end method
