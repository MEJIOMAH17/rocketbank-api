.class public final Lru/rocketbank/core/model/contact/SyncContacts;
.super Ljava/lang/Object;
.source "SyncContacts.java"


# instance fields
.field private contacts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lru/rocketbank/core/model/contact/DeviceContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lru/rocketbank/core/model/contact/DeviceContact;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/contact/SyncContacts;->contacts:Ljava/util/Collection;

    return-void
.end method
