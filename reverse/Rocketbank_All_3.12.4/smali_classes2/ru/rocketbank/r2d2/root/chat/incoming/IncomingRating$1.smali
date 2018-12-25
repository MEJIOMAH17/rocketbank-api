.class final Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;
.super Ljava/lang/Object;
.source "IncomingRating.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/r2d2/root/chat/MessageManager;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomingRating.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingRating.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1\n*L\n1#1,60:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $fragmentManager:Landroid/support/v4/app/FragmentManager;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 2

    .line 29
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->access$getRating$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)Lru/rocketbank/core/network/model/Rating;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->Companion:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;->getInstance(Lru/rocketbank/core/network/model/Rating;)Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    check-cast v0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->setRefreshListener(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;)V

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$1;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method
