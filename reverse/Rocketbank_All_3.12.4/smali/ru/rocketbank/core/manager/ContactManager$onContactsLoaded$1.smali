.class final Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;
.super Ljava/lang/Object;
.source "ContactManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/ContactManager;->onContactsLoaded(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactManager.kt\nru/rocketbank/core/manager/ContactManager$onContactsLoaded$1\n*L\n1#1,344:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $rocketContactIDS:Ljava/util/List;

.field final synthetic $serverContacts:Ljava/util/List;

.field final synthetic this$0:Lru/rocketbank/core/manager/ContactManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/ContactManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    iput-object p2, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$serverContacts:Ljava/util/List;

    iput-object p3, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$rocketContactIDS:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 13

    .line 37
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    const-string v0, "userModel"

    .line 1109
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getTransfers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1112
    iget-object v1, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$serverContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/contact/Contact;

    .line 1113
    invoke-virtual {v2}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1115
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/TransferModel;

    const-string v3, "transfer"

    .line 1117
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/TransferModel;->getFriendId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1120
    new-instance v3, Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v2}, Lru/rocketbank/core/model/TransferModel;->getFriendId()J

    move-result-wide v5

    invoke-virtual {v2}, Lru/rocketbank/core/model/TransferModel;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lru/rocketbank/core/model/TransferModel;->getLastName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lru/rocketbank/core/model/contact/Contact;-><init>(JLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V

    const-string v4, "internal"

    .line 1121
    invoke-virtual {v2}, Lru/rocketbank/core/model/TransferModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lru/rocketbank/core/model/contact/Contact;->setRocket(Z)V

    .line 1122
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v3}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1124
    :cond_2
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$serverContacts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/contact/Contact;

    .line 1125
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1126
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/contact/Contact;

    if-eqz v2, :cond_3

    .line 1127
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/contact/Contact;->setAvatar(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/contact/Contact;->setName(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getServerFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/contact/Contact;->setServerFirstName(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getServerLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/contact/Contact;->setServerLastName(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getEur()Z

    move-result v3

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/contact/Contact;->setEur(Z)V

    .line 1132
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getUsd()Z

    move-result v0

    invoke-virtual {v2, v0}, Lru/rocketbank/core/model/contact/Contact;->setUsd(Z)V

    goto :goto_2

    .line 1137
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1138
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-static {v0}, Lru/rocketbank/core/manager/ContactManager;->access$getContactsSubject$p(Lru/rocketbank/core/manager/ContactManager;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/ContactsEvent;

    iget-object v2, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$rocketContactIDS:Ljava/util/List;

    iget-object v3, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$serverContacts:Ljava/util/List;

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lru/rocketbank/core/events/ContactsEvent;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 1140
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/ContactManager;->getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/RocketShortcutManager;->createFriendShortcuts(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1142
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 1145
    :cond_5
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-static {p1}, Lru/rocketbank/core/manager/ContactManager;->access$getContactsSubject$p(Lru/rocketbank/core/manager/ContactManager;)Lrx/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/events/ContactsEvent;

    iget-object v1, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$rocketContactIDS:Ljava/util/List;

    iget-object v2, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;->$serverContacts:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lru/rocketbank/core/events/ContactsEvent;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
