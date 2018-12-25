.class public final Lru/rocketbank/core/model/contact/DeviceContact;
.super Ljava/lang/Object;
.source "DeviceContact.java"


# instance fields
.field private emails:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Email"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contact_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private phones:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Phone"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/contact/DeviceContact;->emails:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/contact/DeviceContact;->phones:Ljava/util/List;

    .line 22
    iput-wide p1, p0, Lru/rocketbank/core/model/contact/DeviceContact;->id:J

    .line 23
    iput-object p3, p0, Lru/rocketbank/core/model/contact/DeviceContact;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final add(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lru/rocketbank/core/model/contact/DeviceContact;->emails:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 45
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_1

    .line 46
    iget-object p1, p0, Lru/rocketbank/core/model/contact/DeviceContact;->phones:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final getEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/model/contact/DeviceContact;->emails:Ljava/util/List;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lru/rocketbank/core/model/contact/DeviceContact;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/model/contact/DeviceContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/contact/DeviceContact;->phones:Ljava/util/List;

    return-object v0
.end method
