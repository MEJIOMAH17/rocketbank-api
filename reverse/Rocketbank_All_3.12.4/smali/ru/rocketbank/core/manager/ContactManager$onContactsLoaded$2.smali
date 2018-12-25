.class final Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/ContactManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/ContactManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$2;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 3

    .line 37
    check-cast p1, Ljava/lang/Throwable;

    .line 1148
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 1149
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$2;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-static {v0}, Lru/rocketbank/core/manager/ContactManager;->access$getContactsSubject$p(Lru/rocketbank/core/manager/ContactManager;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/ContactsEvent;

    new-instance v2, Lru/rocketbank/core/events/ErrorEvent;

    invoke-direct {v2, p1}, Lru/rocketbank/core/events/ErrorEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lru/rocketbank/core/events/ContactsEvent;-><init>(Lru/rocketbank/core/events/ErrorEvent;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
