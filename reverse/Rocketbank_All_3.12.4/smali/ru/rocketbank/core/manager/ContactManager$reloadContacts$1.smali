.class public final Lru/rocketbank/core/manager/ContactManager$reloadContacts$1;
.super Lrx/Subscriber;
.source "ContactManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/ContactManager;->reloadContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "+",
        "Lru/rocketbank/core/model/contact/DeviceContact;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactManager.kt\nru/rocketbank/core/manager/ContactManager$reloadContacts$1\n*L\n1#1,344:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/ContactManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/ContactManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager$reloadContacts$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .line 178
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 1181
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager$reloadContacts$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-static {v0, p1}, Lru/rocketbank/core/manager/ContactManager;->access$handleReloadedContacts(Lru/rocketbank/core/manager/ContactManager;Ljava/util/Map;)V

    return-void

    :cond_0
    return-void
.end method
