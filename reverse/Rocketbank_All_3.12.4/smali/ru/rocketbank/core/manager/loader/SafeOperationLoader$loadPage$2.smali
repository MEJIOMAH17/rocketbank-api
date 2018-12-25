.class final Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;
.super Ljava/lang/Object;
.source "SafeOperationLoader.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/SafeOperationLoader;->loadPage(I)Lrx/Observable;
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
        "Lru/rocketbank/core/model/FeedList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pageNumber:I

.field final synthetic this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/SafeOperationLoader;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;->this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;

    iput p2, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;->$pageNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;->call(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/FeedList;)V
    .locals 1

    .line 52
    iget p1, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;->$pageNumber:I

    iget-object v0, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;->this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/SafeOperationLoader;->getCurrentPage()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;->this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;

    iget v0, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$2;->$pageNumber:I

    invoke-virtual {p1, v0}, Lru/rocketbank/core/manager/loader/SafeOperationLoader;->setCurrentPage(I)V

    :cond_0
    return-void
.end method
