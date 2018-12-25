.class public final Lru/rocketbank/core/model/contact/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# instance fields
.field private rocketContactIDS:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rocketContactIDS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private serverContacts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_contacts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contacts;->rocketContactIDS:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lru/rocketbank/core/model/contact/Contacts;->serverContacts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getRocketContactIDS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contacts;->rocketContactIDS:Ljava/util/List;

    return-object v0
.end method

.method public final getServerContacts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contacts;->serverContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/contact/Contact;

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Lru/rocketbank/core/model/contact/Contact;->setRocket(Z)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contacts;->serverContacts:Ljava/util/List;

    return-object v0
.end method
