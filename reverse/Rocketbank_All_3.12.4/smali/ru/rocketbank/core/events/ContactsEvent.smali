.class public final Lru/rocketbank/core/events/ContactsEvent;
.super Ljava/lang/Object;
.source "ContactsEvent.kt"


# instance fields
.field private errorEvent:Lru/rocketbank/core/events/ErrorEvent;

.field private inProgressEvent:Lru/rocketbank/core/events/InProgressEvent;

.field private rocketContactIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private serverContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private transferFriends:Ljava/util/List;
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
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->transferFriends:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rocketContactIDS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverContacts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transferFriends"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->transferFriends:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    .line 18
    iput-object p3, p0, Lru/rocketbank/core/events/ContactsEvent;->transferFriends:Ljava/util/List;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/events/ContactsEvent;->errorEvent:Lru/rocketbank/core/events/ErrorEvent;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/events/ErrorEvent;)V
    .locals 1

    const-string v0, "errorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->transferFriends:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lru/rocketbank/core/events/ContactsEvent;->errorEvent:Lru/rocketbank/core/events/ErrorEvent;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/events/InProgressEvent;)V
    .locals 1

    const-string v0, "inProgressEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->transferFriends:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->errorEvent:Lru/rocketbank/core/events/ErrorEvent;

    .line 32
    iput-object p1, p0, Lru/rocketbank/core/events/ContactsEvent;->inProgressEvent:Lru/rocketbank/core/events/InProgressEvent;

    return-void
.end method


# virtual methods
.method public final getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->errorEvent:Lru/rocketbank/core/events/ErrorEvent;

    return-object v0
.end method

.method public final getInProgressEvent()Lru/rocketbank/core/events/InProgressEvent;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->inProgressEvent:Lru/rocketbank/core/events/InProgressEvent;

    return-object v0
.end method

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

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->rocketContactIDS:Ljava/util/List;

    return-object v0
.end method

.method public final getServerContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->serverContacts:Ljava/util/List;

    return-object v0
.end method

.method public final getTransferFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/events/ContactsEvent;->transferFriends:Ljava/util/List;

    return-object v0
.end method
