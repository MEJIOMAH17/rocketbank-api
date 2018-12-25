.class public final Lru/rocketbank/core/model/contact/Contact;
.super Ljava/lang/Object;
.source "Contact.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContact.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Contact.kt\nru/rocketbank/core/model/contact/Contact\n*L\n1#1,110:1\n*E\n"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eur:Z

.field private firstName:Ljava/lang/String;

.field private id:J

.field private isRocket:Z

.field private lastName:Ljava/lang/String;

.field private phones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverFirstName:Ljava/lang/String;

.field private serverLastName:Ljava/lang/String;

.field private usd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->emails:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->phones:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->emails:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->phones:Ljava/util/ArrayList;

    .line 27
    iput-wide p1, p0, Lru/rocketbank/core/model/contact/Contact;->id:J

    .line 28
    iput-object p3, p0, Lru/rocketbank/core/model/contact/Contact;->firstName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lru/rocketbank/core/model/contact/Contact;->lastName:Ljava/lang/String;

    .line 30
    iput-boolean p5, p0, Lru/rocketbank/core/model/contact/Contact;->usd:Z

    .line 31
    iput-boolean p6, p0, Lru/rocketbank/core/model/contact/Contact;->eur:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V
    .locals 10

    and-int/lit8 v1, p7, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, p5

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    .line 26
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/core/model/contact/Contact;-><init>(JLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final getContactData(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 90
    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v3, v1

    const-string v4, "contact_id=?"

    .line 92
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p5

    .line 88
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 95
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    .line 98
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    if-lez p3, :cond_0

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/List;

    .line 101
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 102
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "cursor.getString(index)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private final getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, " "

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "name.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 4

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->emails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getEur()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lru/rocketbank/core/model/contact/Contact;->eur:Z

    return v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/model/contact/Contact;->id:J

    return-wide v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->firstName:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/core/model/contact/Contact;->lastName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lru/rocketbank/core/model/contact/Contact;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhones()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->phones:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getServerFirstName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->serverFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerLastName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->serverLastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerName()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->serverFirstName:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/core/model/contact/Contact;->serverLastName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lru/rocketbank/core/model/contact/Contact;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUsd()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lru/rocketbank/core/model/contact/Contact;->usd:Z

    return v0
.end method

.method public final isRocket()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lru/rocketbank/core/model/contact/Contact;->isRocket:Z

    return v0
.end method

.method public final set(Lru/rocketbank/core/model/contact/ServerContact;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->avatar:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->serverFirstName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->firstName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->serverLastName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->lastName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/contact/Contact;->id:J

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lru/rocketbank/core/model/contact/Contact;->isRocket:Z

    .line 63
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getUsd()Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/core/model/contact/Contact;->usd:Z

    .line 64
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getEur()Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/core/model/contact/Contact;->eur:Z

    return-void
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setEmails(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->emails:Ljava/util/ArrayList;

    return-void
.end method

.method public final setEur(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lru/rocketbank/core/model/contact/Contact;->eur:Z

    return-void
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->firstName:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lru/rocketbank/core/model/contact/Contact;->id:J

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->lastName:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->firstName:Ljava/lang/String;

    const-string p1, ""

    .line 48
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->lastName:Ljava/lang/String;

    return-void
.end method

.method public final setPhones(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->phones:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRocket(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lru/rocketbank/core/model/contact/Contact;->isRocket:Z

    return-void
.end method

.method public final setServerFirstName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->serverFirstName:Ljava/lang/String;

    return-void
.end method

.method public final setServerLastName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->serverLastName:Ljava/lang/String;

    return-void
.end method

.method public final setUsd(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lru/rocketbank/core/model/contact/Contact;->usd:Z

    return-void
.end method

.method public final updateContacts(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-wide v3, p0, Lru/rocketbank/core/model/contact/Contact;->id:J

    const-string v5, "data1"

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "ContactsContract.CommonDataKinds.Email.CONTENT_URI"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/core/model/contact/Contact;->getContactData(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/contact/Contact;->emails:Ljava/util/ArrayList;

    .line 84
    iget-wide v3, p0, Lru/rocketbank/core/model/contact/Contact;->id:J

    const-string v5, "data1"

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "ContactsContract.CommonDataKinds.Phone.CONTENT_URI"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/core/model/contact/Contact;->getContactData(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/contact/Contact;->phones:Ljava/util/ArrayList;

    return-void
.end method
