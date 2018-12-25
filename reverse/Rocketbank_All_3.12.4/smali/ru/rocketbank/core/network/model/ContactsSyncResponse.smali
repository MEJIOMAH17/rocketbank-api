.class public final Lru/rocketbank/core/network/model/ContactsSyncResponse;
.super Ljava/lang/Object;
.source "ContactsSyncResponse.kt"


# instance fields
.field private final contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/ServerContact;",
            ">;"
        }
    .end annotation
.end field

.field private final contactsHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contacts_hash"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/ServerContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    iput-object p2, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/ContactsSyncResponse;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/network/model/ContactsSyncResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/ContactsSyncResponse;->copy(Ljava/util/List;Ljava/lang/String;)Lru/rocketbank/core/network/model/ContactsSyncResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/ServerContact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lru/rocketbank/core/network/model/ContactsSyncResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/ServerContact;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lru/rocketbank/core/network/model/ContactsSyncResponse;"
        }
    .end annotation

    new-instance v0, Lru/rocketbank/core/network/model/ContactsSyncResponse;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/ContactsSyncResponse;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/ContactsSyncResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/ContactsSyncResponse;

    iget-object v0, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    iget-object v1, p1, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/ServerContact;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public final getContactsHash()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContactsSyncResponse(contacts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactsHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/ContactsSyncResponse;->contactsHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
