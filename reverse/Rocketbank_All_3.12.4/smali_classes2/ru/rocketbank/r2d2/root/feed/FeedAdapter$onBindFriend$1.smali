.class final Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1;
.super Ljava/lang/Object;
.source "FeedAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindFriend(Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/FriendOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedAdapter.kt\nru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1\n*L\n1#1,721:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $friendOperation:Lru/rocketbank/core/model/FriendOperation;

.field final synthetic $friendViewHolder:Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/FriendOperation;Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1;->$friendOperation:Lru/rocketbank/core/model/FriendOperation;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1;->$friendViewHolder:Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 355
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1;->$friendOperation:Lru/rocketbank/core/model/FriendOperation;

    invoke-virtual {v0}, Lru/rocketbank/core/model/FriendOperation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    new-instance v10, Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Friend;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Friend;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Friend;->getLastName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lru/rocketbank/core/model/contact/Contact;-><init>(JLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V

    .line 359
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Friend;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lru/rocketbank/core/model/contact/Contact;->setServerFirstName(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Friend;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lru/rocketbank/core/model/contact/Contact;->setServerLastName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 361
    invoke-virtual {v10, v0}, Lru/rocketbank/core/model/contact/Contact;->setRocket(Z)V

    .line 362
    sget-object v0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->Companion:Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1;->$friendViewHolder:Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;

    iget-object v1, v1, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->itemView:Landroid/view/View;

    const-string v2, "friendViewHolder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v10, v2}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$Companion;->startForResult(Landroid/app/Activity;Lru/rocketbank/core/model/contact/Contact;I)V

    :cond_1
    return-void
.end method
