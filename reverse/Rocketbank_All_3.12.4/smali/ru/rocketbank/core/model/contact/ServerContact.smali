.class public final Lru/rocketbank/core/model/contact/ServerContact;
.super Ljava/lang/Object;
.source "ServerContact.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/contact/ServerContact$Gender;
    }
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userpic_url"
    .end annotation
.end field

.field private eur:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eur"
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend_id"
    .end annotation
.end field

.field private ids:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contact_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field private usd:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usd"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->ids:Ljava/util/List;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->avatar:Ljava/lang/String;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->firstName:Ljava/lang/String;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->lastName:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->gender:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getEur()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->eur:Z

    return v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Lru/rocketbank/core/model/contact/ServerContact$Gender;
    .locals 1

    .line 35
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->gender:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/contact/ServerContact$Gender;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/contact/ServerContact$Gender;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    sget-object v0, Lru/rocketbank/core/model/contact/ServerContact$Gender;->male:Lru/rocketbank/core/model/contact/ServerContact$Gender;

    :goto_0
    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->id:J

    return-wide v0
.end method

.method public final getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->ids:Ljava/util/List;

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsd()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lru/rocketbank/core/model/contact/ServerContact;->usd:Z

    return v0
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setEur(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->eur:Z

    return-void
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->firstName:Ljava/lang/String;

    return-void
.end method

.method public final setGender(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->gender:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->id:J

    return-void
.end method

.method public final setIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->ids:Ljava/util/List;

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->lastName:Ljava/lang/String;

    return-void
.end method

.method public final setUsd(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lru/rocketbank/core/model/contact/ServerContact;->usd:Z

    return-void
.end method
