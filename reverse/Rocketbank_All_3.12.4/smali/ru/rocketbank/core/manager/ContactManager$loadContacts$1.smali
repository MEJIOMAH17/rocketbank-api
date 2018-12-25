.class final Lru/rocketbank/core/manager/ContactManager$loadContacts$1;
.super Ljava/lang/Object;
.source "ContactManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/ContactManager;->loadContacts(Z)V
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
        "Lru/rocketbank/core/model/contact/Contacts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/ContactManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/ContactManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager$loadContacts$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 3

    .line 37
    check-cast p1, Lru/rocketbank/core/model/contact/Contacts;

    if-eqz p1, :cond_0

    .line 1100
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager$loadContacts$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contacts;->getRocketContactIDS()Ljava/util/List;

    move-result-object v1

    const-string v2, "c.rocketContactIDS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contacts;->getServerContacts()Ljava/util/List;

    move-result-object p1

    const-string v2, "c.serverContacts"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lru/rocketbank/core/manager/ContactManager;->access$onContactsLoaded(Lru/rocketbank/core/manager/ContactManager;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 1102
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager$loadContacts$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-static {p1}, Lru/rocketbank/core/manager/ContactManager;->access$reloadContacts(Lru/rocketbank/core/manager/ContactManager;)V

    return-void
.end method
